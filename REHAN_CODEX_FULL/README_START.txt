REHAN CODEX BOT — STARTUP FIX

Files:
- main.py: bot application entry point
- config.py: bot settings; if a basic panel accidentally starts config.py, it now forwards to main.py
- requirements.txt: Python dependencies
- start.sh: simple launcher
- Procfile: worker startup hint for platforms that support Procfile

STARTUP
1. Keep main.py, config.py and requirements.txt in the same folder.
2. Install dependencies once: pip install -r requirements.txt
3. Preferred startup command: sh start.sh
   Or set the hosting panel's startup file to main.py.
4. If your panel is currently fixed to run config.py, this package includes a compatibility launcher so that it forwards to main.py.
5. Do not run two copies of the bot at once; Telegram polling may report a Conflict if another instance uses the same token.

SECURITY
- Do not share config.py publicly: it contains bot credentials/session data.
- If the token or MTProto session string was posted publicly, revoke/rotate it before using the bot.

NOTE
The launcher fixes the wrong-entry-file startup issue. Actual bot startup still depends on valid credentials, network access, and Telegram API availability. Check the first error printed in the hosting logs if it still exits.
