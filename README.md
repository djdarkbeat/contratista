# README

## Contratista

Contratista is Spanish for contractor.

> Un contratista es la persona o empresa que es contratada por otra organización o particular para la construcción de un edificio, carretera, instalación o algún trabajo especial, como refinerías o plataformas petroleras por ejemplo. Estos trabajos pueden representar la totalidad de la obra, o bien partes de ella, divididas de acuerdo con su especialidad, territorialidad, horario u otras causas.

Contratista is a Rails app that allows users to build contracts using markdown and use pandoc to pipe them through a word template to achive a final contract that is presentable to their clients.

I created contratista after much frustrations of copy and pasting word files and occasionally sending a client a contract with someone else's name in it. While I am reassured this happens a lot, I wish no further embarassment like this for myself or others.

## Requirements

### Pandoc

#### Windows

On Windows, Pandoc can be installed by visiting the download page and retrieving the Windows installer.

#### macOS

The preferred method is Homebrew. Homebrew is a packet manager that makes it easy to install command line programs such as pandoc and makes it easy to maintain it. Make sure to install Homebrew correctly, and then simply run the following command in the Terminal:

> $ brew install pandoc

To update pandoc from time to time, use this command:

> $ brew upgrade pandoc

This will upgrade all installed formulae (as they are called) to the newest version.

#### Linux

On Linux, installing Pandoc is simple. Use the package manager to search for, and install Pandoc. The provided packages aren't always up-to-date, but they will work.

## Setup

> rake db:create

> rake db:migrate

> rake db:seed

Navigate to http://localhost:3000/admin

Markdown contract samples (Tyrell Corp.) for a Master Services Agreement and a Retained Services Agreement as well as the des.docx formatting file for pandoc are found in lib/templates

Finished .docx files are attempted to be launched on creation. Use Microsoft Word, Libre Office, or disable the launch and upload to a web based document service to view.

## License

Released under MIT license.

Copyright 2019, Eldon Tyrell

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
