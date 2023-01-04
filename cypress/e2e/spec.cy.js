describe('Home page', () => {
  beforeEach(() => { cy.app('load_seed') })
  beforeEach(() => {
    cy.visit('http://localhost:5017')

  })

  it('navbar', () => {

    cy.get('.navbar').contains('Accueil')

    cy.get('.navbar').contains('Les balades partagées').click()
    cy.url().should('include', '/publicwalks')

    cy.get('.navbar').contains('Connexion').click()
    cy.url().should('include', '/sign_in')

    cy.get('.navbar').contains('Contact')


  })

  it ('home body', () => {

    cy.get('h2').contains('Pourquoi rejoindre "Trace ta balade" ?')
    cy.get('h2').contains('Quelques balades présentes sur "Trace ta balade" :')
    cy.get('h2').contains('Vos témoignages')
  })

  it ('footer', () => {

    cy.get('a').eq(6).invoke('removeAttr', 'target').click()
    cy.url()
    .should('include', 'https://github.com/JeanneEnnaej')
    cy.go('back')

  })

})
