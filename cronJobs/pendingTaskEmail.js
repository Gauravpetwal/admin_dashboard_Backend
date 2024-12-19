const cron = require("node-cron");
const assignedUserTable = require("../models/taskDetail");
const userTable = require("../models/userModel");
const mailSender = require("../helpers/mail");
const templateTable = require("../models/templates");
const Handlebars = require("handlebars");
const taskTable = require("../models/taskModel");

const sendMail = async () => {
    const userData = [];
    const usersDetails = await assignedUserTable.findAll({
      where: { status: "Pending" },
      include: [
        { model: userTable, attributes: ["email", "userName"] },
        { model: taskTable, attributes: ["title"] },
      ],
    });
    usersDetails.map((details) => {
      userData.push({
        name: details.dataValues.user.userName,
        email: details.dataValues.user.email,
        taskName: details.dataValues.task.title,
      });
    });
    const {templateContent} = await templateTable.findByPk(1)

    userData.map(async(user)=>{
        const compiledTemplate =  Handlebars.compile(templateContent)
        const template = compiledTemplate({"name":user.name, 'taskname':user.taskName})
       await mailSender(user.email,template)

    })
};


module.exports = sendMail;
