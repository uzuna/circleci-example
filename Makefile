VALUE := valuevalue

.PHONY: generate
generate:
	mkdir -p dist
	echo ${VALUE} > dist/generated.txt

.PHONY: check
check:
	echo ${VALUE} | diff dist/generated.txt -

.PHONY: clean
clean:
	rm -rf dist
