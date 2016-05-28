// this import should be first in order to load some required settings (like globals and reflect-metadata)
import {nativeScriptBootstrap} from "nativescript-angular/application";
import {IndexComponent} from "./pages/index/index.component";

nativeScriptBootstrap(IndexComponent);
