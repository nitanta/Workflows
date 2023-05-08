npm install -g danger

echo $PULL_REQUEST_URL

swift build

swift run danger-swift ci