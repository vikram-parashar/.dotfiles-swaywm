local setup, code_runner = pcall(require, "code_runner")
if not setup then
	return
end

code_runner.setup()
