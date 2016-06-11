import {Component} from "@angular/core";

import Config from '../../shared/config';

@Component({
  selector: "Index",
  templateUrl: './pages/index/index.xml',
})

export class IndexPage {
  public get navTitle(): string {
    return Config.title;
  }

  public counter: number = 16;

  public get message(): string {
    if (this.counter > 0) {
      return this.counter + " taps left";
    } else {
      return "Hoorraaay! \nYou are ready to start building!";
    }
  }

  public onTap() {
    this.counter--;
  }
}
