module = "njustthesis"
cleanfiles = {"*.curlopt"}
demofiles = {"latexmkrc", "Makefile"}
docfiles = {"*.md"}
tagfiles = {"*.dtx", "build.lua"}
typesetexe = "xelatex"
typesetopts = "-shell-escape -file-line-error -halt-on-error -interaction=nonstopmode"
uploadconfig = {
  announcement = "https://github.com/Freed-Wu/njustthesis/releases",
  author = "wzy",
  ctanPath = "/macros/latex/contrib/njustthesis",
  email = "wuzy01@qq.com",
  license = "gpl3+",
  pkg = "njustthesis0",
  summary = "Thesis template for NJUST",
  uploader = "wzy",
  version = "2022-03-04 0.0.1",

  bugtracker = "https://github.com/Freed-Wu/njustthesis/issues",
  description = [[Thesis template for Nanjing University of Science and Technology.]],
  development = "https://github.com/Freed-Wu/njustthesis",
  home = "https://ctan.org/pkg/njustthesis",
  note = [[Uploaded automatically by l3build...]],
  repository = "https://github.com/Freed-Wu/njustthesis",
  support = "https://github.com/Freed-Wu/njustthesis/issues",
  topic = "latex209;std-conform;doc-templ;class;chinese;dissertation",
}

-- l3build tag <tagname>
function update_tag(file, content, tagname, tagdate)
  if string.match(file, "%.dtx$") then
    content = string.gsub(content,
      "%d%d%d%d[-]%d%d[-]%d%d [0-9.]+",
      tagdate .. " " .. tagname)
    content = string.gsub(content,
      "\\def\\filedate{%d%d%d%d[-]%d%d[-]%d%d}",
      "\\def\\filedate{" .. tagdate .. "}")
    content = string.gsub(content,
      "\\def\\fileversion{[0-9.]+}",
      "\\def\\fileversion{" .. tagname .. "}")
  end
  if string.match(file, "^build.lua$") then
    content = string.gsub(content,
      "%d%d%d%d[-]%d%d[-]%d%d [0-9.]+",
      tagdate .. " " .. tagname)
  end
  return content
end

-- compatible with old l3build
---@diagnostic disable-next-line: undefined-global
if not release_date then
---@diagnostic disable-next-line: undefined-global
  dofile(kpse.lookup("l3build.lua"))
end
