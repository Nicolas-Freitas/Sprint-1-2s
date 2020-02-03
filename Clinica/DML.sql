select Veterinario.Nome, Pet.Nome, Atendimento.DataAtend, Atendimento.Descricao from Atendimento 
inner join Veterinario on Veterinario.IdVeterinario = Atendimento.IdAtendimento
inner join Pet on Pet.IdPet = Atendimento.IdPet;
