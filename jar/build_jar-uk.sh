LANG_CODE=uk_UA

echo ===MobiReader===================================================
mkdir -p MobiReader/META-INF
cp src/Meta-inf/MobiReader/* MobiReader/META-INF

mkdir -p MobiReader/com/amazon/ebook/booklet/reader/resources
cp src/ReaderResources_uk_UA.java ReaderResources_uk_UA.java
javac -target 1.4 -source 1.4 ReaderResources_uk_UA.java
mv ReaderResources_uk_UA.class MobiReader/com/amazon/ebook/booklet/reader/resources

mkdir -p MobiReader/com/amazon/ebook/booklet/reader/gui/resources
cp src/BookGUIUtilResources_pref_uk_UA.java BookGUIUtilResources_uk_UA.java
javac -target 1.4 -source 1.4 BookGUIUtilResources_uk_UA.java
mv BookGUIUtilResources_uk_UA.class MobiReader/com/amazon/ebook/booklet/reader/gui/resources

mkdir -p MobiReader/com/amazon/ebook/booklet/reader/gui/infobox/resources
cp src/SupplementaryInfoBoxResources_uk_UA.java SupplementaryInfoBoxResources_uk_UA.java
javac -target 1.4 -source 1.4 SupplementaryInfoBoxResources_uk_UA.java
mv SupplementaryInfoBoxResources_uk_UA.class MobiReader/com/amazon/ebook/booklet/reader/gui/infobox/resources

mkdir -p MobiReader/com/amazon/ebook/booklet/reader/gui/view/pagecontentview/resources
cp src/FullScreenReadingViewResources_pref_uk_UA.java FullScreenReadingViewResources_uk_UA.java
javac -target 1.4 -source 1.4 FullScreenReadingViewResources_uk_UA.java
mv FullScreenReadingViewResources_uk_UA.class MobiReader/com/amazon/ebook/booklet/reader/gui/view/pagecontentview/resources

cp src/ReadingModeViewResources_pref_uk_UA.java ReadingModeViewResources_uk_UA.java
javac -target 1.4 -source 1.4 ReadingModeViewResources_uk_UA.java
mv ReadingModeViewResources_uk_UA.class MobiReader/com/amazon/ebook/booklet/reader/gui/view/pagecontentview/resources

mkdir -p MobiReader/com/amazon/ebook/booklet/pdfreader/impl/resources
cp src/PDFResources_uk_UA.java PDFResources_uk_UA.java
javac -target 1.4 -source 1.4 PDFResources_uk_UA.java
mv PDFResources_uk_UA.class MobiReader/com/amazon/ebook/booklet/pdfreader/impl/resources

mkdir -p MobiReader/com/amazon/ebook/booklet/reader/gui/overlay/cursoroptions/resources
cp src/CursorOptionsResources_uk_UA.java CursorOptionsResources_uk_UA.java
javac -target 1.4 -source 1.4 CursorOptionsResources_uk_UA.java
mv CursorOptionsResources_uk_UA.class MobiReader/com/amazon/ebook/booklet/reader/gui/overlay/cursoroptions/resources

cd MobiReader
7za a -r -tzip MobiReader com META-INF
cd ..
mv MobiReader/MobiReader.zip ../loc_hack/src/MobiReader-uk_UA.jar

#echo ===framework-impl===============================================

#mkdir -p framework-impl/META-INF
#cp src/Meta-inf/framework-impl/* framework-impl/META-INF

#mkdir -p framework-impl/com/amazon/ebook/framework/impl/resources
#cp src/StatusBarResources_uk_UA.java StatusBarResources_uk_UA.java
#javac -target 1.4 -source 1.4 StatusBarResources_uk_UA.java
#mv StatusBarResources_uk_UA.class framework-impl/com/amazon/ebook/framework/impl/resources

#cd framework-impl
#7za a -r -tzip framework-impl com META-INF
#cd ..
#mv framework-impl/framework-impl.zip ../loc_hack/src/framework-impl-uk_UA.jar

echo ===framework-api================================================

mkdir -p framework-api/META-INF
cp src/Meta-inf/framework-api/* framework-api/META-INF

mkdir -p framework-api/com/amazon/ebook/framework/resources
cp src/UIResources_pref_uk_UA.java UIResources_uk_UA.java
javac -target 1.4 -source 1.4 UIResources_uk_UA.java
mv UIResources_uk_UA.class framework-api/com/amazon/ebook/framework/resources

cd framework-api
7za a -r -tzip framework-api com META-INF
cd ..
mv framework-api/framework-api.zip ../loc_hack/src/framework-api-uk_UA.jar

echo ===clean dir====================================================
rm -rf framework-impl
rm -rf framework-api
rm -rf MobiReader
rm *.java
