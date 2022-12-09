import "./App.css";
import { ThemeProvider } from "@mui/material/styles";
import theme from "./theme/theme";
import Header from "./components/Header";
import { CssBaseline } from "@mui/material";
import Consulation from "./components/pages/Consultation";
import News from "./components/pages/News";
import MyReservation from "./components/pages/MyReservation";
import NoMatch from "./components/pages/NoMatch";
import createHistory from "history/createBrowserHistory";
// import "react-date-range/dist/styles.css";
// import "react-date-range/dist/theme/default.css";
import { Router, Switch, Route } from "react-router-dom";
import { useEffect } from "react";

const history = createHistory({ forceRefresh: true });

function App() {
  useEffect(() => {
    console.log("theme", theme);
  });

  return (
    <div className="App">
      <ThemeProvider theme={theme}>
        <CssBaseline />
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
      </ThemeProvider>
    </div>
  );
}

export default App;
