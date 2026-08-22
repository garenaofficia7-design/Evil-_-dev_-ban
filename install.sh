#!/data/data/com.termux/files/usr/bin/bash
set -e
APP_DIR="$HOME/.abuse-report"
mkdir -p "$APP_DIR"
cp -r . "$APP_DIR/"
chmod +x "$APP_DIR/abuse-report"
mkdir -p "$PREFIX/bin"
cat > "$PREFIX/bin/abuse-report" <<EOF
#!/data/data/com.termux/files/usr/bin/bash
exec bash "$APP_DIR/abuse-report" "\$@"
EOF
chmod +x "$PREFIX/bin/abuse-report"
echo
echo "✓ Abuse Report v2 installed."
echo "Run: abuse-report"
