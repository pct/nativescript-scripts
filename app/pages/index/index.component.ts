import {Component} from "@angular/core";

@Component({
  selector: "index",
  templateUrl: './pages/index/index.xml',
})

export class IndexComponent {
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
