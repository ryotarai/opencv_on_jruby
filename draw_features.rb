$CLASSPATH << "helpers"
require 'java'
require '/usr/local/Cellar/opencv/2.4.4a/share/OpenCV/java/opencv-244.jar'

Java::org.opencv.LdLibraryLoader

java_import org.opencv.core.Mat
java_import org.opencv.core.MatOfKeyPoint
java_import org.opencv.highgui.Highgui
java_import org.opencv.features2d.FeatureDetector
java_import org.opencv.features2d.Features2d

src = Highgui.imread(ARGV.first)
keypoints = MatOfKeyPoint.new
detector = FeatureDetector.create(FeatureDetector::SIFT)
detector.detect src, keypoints

keypoints.to_array.each do |keypoint|
  point = keypoint.pt
  puts "x: #{point.x}, y: #{point.y}"
end

dst = Mat.new
Features2d.drawKeypoints src, keypoints, dst

Highgui.imwrite "./feature_out.png", dst

