rm -rf production
mkdir production
#копируем файлы
echo "Копирую файлы.."
#cp js production/js
cp -r img production/img
mkdir production/css
cp css/main.css production/css/main.css
cp index.html production/index.html
cp favicon.ico production/favicon.ico
#сжимаем css
cd js
echo "Объединяю JS.."
rm -f build.js
rm -f build.min.js
cat *.js > build.js
echo "Сжимаю JS.."
python -m jsmin build.js > build.min.js
cd ..
mkdir production/js
cp js/build.min.js production/js/build.min.js
echo "Готово"
