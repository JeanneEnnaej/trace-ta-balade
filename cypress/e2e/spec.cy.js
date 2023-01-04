describe('Home page', () => {
  beforeEach(() => { cy.app('load_seed') })
  beforeEach(() => {
    cy.visit(Cypress.config().baseUrl)

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
    cy.origin('https://github.com/JeanneEnnaej', () => {
    cy.get('h1').should('contain', 'Hi') })

    // cy.visit(Cypress.config().baseUrl)
    // cy.get('a').eq(7).invoke('removeAttr', 'target').click()
    // cy.origin('https://www.linkedin.com/in/jeanne-desmier-6061a3a7/', () => {
    // cy.get('h1').should('contain', 'Jeanne') })

    // cy.visit(Cypress.config().baseUrl)
    // cy.get('a').eq(6).invoke('removeAttr', 'target').click()
    // cy.origin('https://www.instagram.com/les_aleas_d_une_vie_de_chien/', () => {
    // cy.get('h2').should('contain', 'aleas') })


  })

})
