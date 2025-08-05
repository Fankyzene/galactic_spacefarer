const cds = require('@sap/cds');
const nodemailer = require('nodemailer');

module.exports = class AdminService extends cds.ApplicationService {
  init() {
    const { Users, Departments, Positions } = cds.entities('AdminService')

    this.before(['CREATE', 'UPDATE'], Users, async (req) => {
      const { stardustCollection, wormholeNavigationSkill } = req.data;

      if (stardustCollection < 0 || wormholeNavigationSkill < 0) {
        req.error(400, 'Stardust Collection and Wormhole Navigation Skill cannot be negative.');
      }

      req.data.stardustCollection = stardustCollection || 100;
      req.data.wormholeNavigationSkill = wormholeNavigationSkill || 5;
    });

    this.after(['CREATE', 'UPDATE'], Users, async (users, req) => {
      const { fullName } = users;
      const transporter = nodemailer.createTransport({
        host: 'smtp.ethereal.email',
        port: 587,
        auth: {
        user: 'kiley.greenfelder1@ethereal.email',
        pass: 'VXPjXPWCJA3ABn7vbR'
    }
});

      const mailOptions = {
        from: 'ArgArg@universe.com',
        to: `${fullName}@spacejourney.com`,
        subject: 'Welcome to your Galactic Spacefarer Adventure!',
        text: `Dear ${fullName},\n\nCongratulations! Welcome on the beginning of your journey!`
      };

      await transporter.sendMail(mailOptions);
    });

    return super.init()
  }
}