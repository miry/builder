/**
 * saveZip
 */

/* Node modules */
const childProcess = require('child_process');
const path = require('path');
const util = require('util');

/* Third-party modules */
const fs = require('fs-extra');

/* Files */

const exec = util.promisify(childProcess.exec);

module.exports = (imgPath, config) => {
  const credentialsTarget = path.join(config.cacheDir, 'credentials.txt');
  const saveTarget = path.join(config.cacheDir, `${config.hostname}.zip`);
  const credentials = [
    `Username: ${config.username}`,
    `Password: ${config.password}`
  ].join('\n');

  return Promise.resolve()
    .then(() => fs.writeFile(credentialsTarget, credentials))
    .then(() => {
      /* Does the fastest compression, with no internal directories */
      const cmd = `zip -1j ${saveTarget} ${credentialsTarget} ${imgPath} ${config.sshKey} ${config.sshKeyPub}`;

      return exec(cmd);
    })
    .then(() => ({
      credentials,
      saveTarget
    }));
};
