import {Component} from "@angular/core";
import {RouteConfig} from "@angular/router-deprecated";
import {NS_ROUTER_DIRECTIVES, NS_ROUTER_PROVIDERS} from "nativescript-angular/router";
import {IndexPage} from "./pages/index/index.component";

@Component({
  selector: "main",
  directives: [NS_ROUTER_DIRECTIVES],
  providers: [NS_ROUTER_PROVIDERS],
  template: "<page-router-outlet></page-router-outlet>"
})

@RouteConfig([
  { path: "/Index", component: IndexPage, name: "Index", useAsDefault: true }
])

export class AppComponent {}
