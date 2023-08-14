#
# Makefile for processing assets
#
# This Makefile is designed to receive two parameters that control its behavior.
# It helps manage assets by processing them in a specified working directory
# and outputting the results to a designated asset output directory.

# Parameter: WORKING_DIRECTORY
# This is the directory where the assets will be processed from.
# This variable is set to the path of the directory containing your source assets.

# Parameter: ASSET_OUTPUT_DIRECTORY
# This is the directory where the processed assets will be stored.
# this variable is set to the path of the directory where the processed assets will be saved.

.PHONY: all build clean

all: clean build

build:
	mkdir -p $(ASSET_OUTPUT_DIRECTORY)
	cp $(WORKING_DIRECTORY)/package.json $(ASSET_OUTPUT_DIRECTORY)
	npm --prefix $(ASSET_OUTPUT_DIRECTORY) install
	cp $(WORKING_DIRECTORY)/*.js $(ASSET_OUTPUT_DIRECTORY)

clean:
	rm -r $(ASSET_OUTPUT_DIRECTORY)
