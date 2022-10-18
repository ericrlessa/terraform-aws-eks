resource "local_file" "exemplo" {
    filename = "exemplo.txt"
    content  = var.conteudo
}

data "local_file" "conteudo_exemplo" {
    filename = "exemplo.txt"
}

output "data-source-result" {
    value = data.local_file.conteudo_exemplo.content
}

resource "local_file" "exemplotfvars" {
    filename = "exemplotfvars.txt"
    content  = var.conteudotfvars
}

resource "local_file" "exemplovarfile" {
    filename = "exemplovarfile.txt"
    content  = var.conteudovarfile
}

variable "conteudotfvars" {
    type = string
    default = "Hello world"
}

variable "conteudo" {
    type = string
    default = "Hello world"
}

variable "conteudovarfile" {
    type = string
    default = "Hello world"
}

output "id-do-arquivo" {
    value = resource.local_file.exemplo.id
}

output "conteudo" {
    value = var.conteudo
}

output "ckicken-egg" {
    value = sort(["chiken", "egg"])
}