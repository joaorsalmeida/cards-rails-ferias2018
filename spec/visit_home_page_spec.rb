require 'rails_helper'

feature 'Visitante visita home page' do
  scenario 'e ve a mensagem Tela Inicial' do
    visit "/"
    expect(page).to have_content 'Tela Inicial'
  end

  scenario 'visita a pagina saiba mais' do
    visit '/saiba-mais'

    expect(page).to have_content 'Saiba Mais'
    expect(page).to have_link 'Voltar', href: '/'
  end

  scenario 'visita saiba mais e volta para home' do
    visit '/saiba-mais'
    click_on 'Voltar'
    expect(page).to have_content 'Tela Inicial'
    expect(current_path).to eq "/"
  end
end
