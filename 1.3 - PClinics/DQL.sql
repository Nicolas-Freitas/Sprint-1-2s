select Veterinario.Nome, Pet.Nome as NomePet, Atendimento.DataAtend, Atendimento.Descricao from Atendimento 
inner join Veterinario on Veterinario.IdVeterinario = Atendimento.IdVeterinario
inner join Pet on Pet.IdPet = Atendimento.IdPet;
