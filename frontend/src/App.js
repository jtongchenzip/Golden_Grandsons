import "./App.css";
import { ThemeProvider, StyledEngineProvider } from "@mui/material/styles";
import theme from "./theme/theme";
import Header from "./components/Header";
import { CssBaseline } from "@mui/material";
import Consulation from "./components/pages/Consultation";
import News from "./components/pages/News";
import MyReservation from "./components/pages/MyReservation";
import NoMatch from "./components/pages/NoMatch";
import { createBrowserHistory } from "history";
import { Router, Switch, Route } from "react-router-dom";

const history = createBrowserHistory();

function App() {
  return (
    <div className="App">
      <ThemeProvider theme={theme}>
        <CssBaseline />
        <StyledEngineProvider injectFirst>
          <Router history={history}>
            <div>
              <Header />
              <Switch>
                <Route exact path="/consulation" component={Consulation} />
                <Route exact path="/news" component={News} />
                <Route exact path="/my-reservation" component={MyReservation} />
                <Route exact path="/" component={Consulation} />
                <Route component={NoMatch} />
              </Switch>
            </div>
          </Router>
        </StyledEngineProvider>
      </ThemeProvider>
    </div>
  );
}

export default App;
