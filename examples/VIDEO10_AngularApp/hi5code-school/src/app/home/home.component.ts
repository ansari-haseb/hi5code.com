import { Component, OnInit } from '@angular/core';
import { KeycloakService } from 'keycloak-angular';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  public userObject: any
  public token: any
  public refreshToken: any

  constructor(protected readonly keycloak: KeycloakService) {
    
  }
  async ngOnInit(): Promise<void> {
    this.userObject = await this.keycloak.loadUserProfile();
    this.token = await this.keycloak.getToken()
    this.refreshToken = this.keycloak.getKeycloakInstance().refreshToken
  }

  logout() {
    this.keycloak.logout("http://localhost:4200")
  }

  async update() {
    await this.keycloak.updateToken(-1).then(async () => {
      this.token = await this.keycloak.getToken()
    })
    this.refreshToken = this.keycloak.getKeycloakInstance().refreshToken
  }

}
