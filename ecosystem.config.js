// Hostinger VPS (KVM) - PM2 Process Management Configuration
// Run with: pm2 start ecosystem.config.js

module.exports = {
  apps: [
    {
      name: 'apsova-platform',
      script: 'node_modules/next/dist/bin/next',
      args: 'start',
      cwd: '/var/www/apsova',
      instances: 'max', // Utilizes all CPU cores on Hostinger KVM
      exec_mode: 'cluster',
      autorestart: true,
      watch: false,
      max_memory_restart: '1G',
      env: {
        NODE_ENV: 'production',
        PORT: 3000
      }
    }
  ]
};
