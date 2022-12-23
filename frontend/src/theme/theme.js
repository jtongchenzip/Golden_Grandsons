import { createTheme, responsiveFontSizes } from "@mui/material";
//import ErrorText from "../components/ui/ErrorText";

// UI/UX Standard
/*
  These objects exists solely for the ease of reference. It is NOT included in the theme object.
*/

/*  Colors  */
const sageMono = {
  white: "#FFFFFF",
  veryLightYellow: "#fafaf6",
  lightGray: "#eae0d3",
  gray: "#D8cec0",
  semiDarkGray: "#615b4e",
  darkGray: "#656565",
  black: "#000000",
};

// green
const sage = {
  60: "#F1F8EC",
  80: "#D3E4CD",
  100: "#ADC2A9",
  dark: "#99A799",
};

const sageRed = {
  60: "#dca4a4",
  80: "#c68181",
  100: "#b44c4c",
  dark: "#a42c04",
};

const palette = {
  // primary: green
  primary: {
    main: sage[100],
    dark: sage.dark,
    light: sage[80],
    contrastText: "white",
  },

  // secondary: red
  secondary: {
    light: sageRed[60],
    main: sageRed[100],
    dark: sageRed.dark,
    contrastText: "white",
  },

  // custom: white and gray
  custom: {
    main: sageMono.white,
    light: sageMono.veryLightYellow,
  },

  // info: yellow & brown
  info: {
    light: "#F9F7EC",
    main: "#ECE8D8",
    dark: "#C7C7B1",
  },

  // success: gray and black
  success: {
    main: sageMono.lightGray,
    light: sageMono.black,
  },

  action: {
    disabledBackground: sageMono.gray,
    disabled: sageMono.lightGray, // font color
    disabledOpacity: "100%",
  },

  background: {
    default: sageMono.white, // mono - very light
    paper: "white",
    card: "white",
  },
};

const typography = {
  // UI/UX style name
  // H1
  h1: {
    fontSize: "5.33rem",
    fontWeight: 500,
    letterSpacing: "-1%",
    lineHeight: 131 / 96,
    fontFamily: "Noto Sans",
  },

  // H2
  h2: {
    fontSize: "3.33rem",
    fontWeight: 500,
    letterSpacing: "-1%",
    lineHeight: 82 / 60,
    fontFamily: "Noto Sans",
  },

  // Big Title
  h3: {
    fontSize: "2.67rem",
    fontWeight: 500,
    lineHeight: 65 / 48,
    // letterSpacing: '-0.01rem',
    fontFamily: "Noto Sans",
  },

  // Title
  h4: {
    fontSize: "1.5rem",
    fontWeight: 600,
    lineHeight: 33 / 24,
    letterSpacing: "0.07rem",
    fontFamily: "Noto Sans",
  },

  // Bold-Body
  h6: {
    fontSize: "1rem",
    fontWeight: 570,
    lineHeight: 25 / 18,
    // letterSpacing: '-0.01rem',
    fontFamily: "Noto Sans",
  },

  // Body
  body1: {
    fontSize: "1rem",
    fontWeight: 500,
    lineHeight: 25 / 18,
    // letterSpacing: '-0.01rem',
    fontFamily: "Noto Sans",
  },

  // Sub-body
  body2: {
    fontSize: "0.89rem",
    fontWeight: 400,
    lineHeight: 22 / 16,
    // letterSpacing: '-0.01rem',
    fontFamily: "Noto Sans",
  },

  // Caption
  caption: {
    fontSize: "0.78rem",
    fontWeight: 300,
    lineHeight: 19 / 14,
    // letterSpacing: '-0.02rem',
    fontFamily: "Noto Sans",
  },

  button: {
    textTransform: "none",
    fontSize: "1rem",
    lineHeight: 24 / 20,
    // letterSpacing: '-0.01rem',
    fontFamily: "Noto Sans",
  },
};

const shape = {
  borderRadius: 10,
};

const components = {
  // button
  MuiButton: {
    styleOverrides: {
      root: {
        borderRadius: "5px",
        height: "40px",
        transition: "background 0.2s",
        margin: "10px 5px 10px 5px",
        padding: "8.5px 25px 10px 25px",
        fontWeight: 550,
      },
      containedPrimary: {
        backgroundColor: palette.primary.main,
      },
      textPrimary: {
        "&:hover": {
          backgroundColor: "#F1F8EC",
        },
      },
      info: {
        backgroundColor: palette.info.main,
        "&:hover": {
          backgroundColor: palette.info.light,
        },
        "&:active": {
          backgroundColor: palette.info.dark,
        },
      },
    },
  },
  MuiIconButton: {
    styleOverrides: {
      root: {
        fontSize: "2em",
        color: "#CEC7B1",
        "&:hover": {
          backgroundColor: palette.info.light,
        },
      },
    },
  },
  MuiToggleButtonGroup: {
    styleOverrides: {
      root: {
        paddingBottom: "0px !important",
        paddingRight: "10px !important",
      },
    },
  },
  MuiToggleButton: {
    styleOverrides: {
      root: {
        borderRadius: "6px !important",
        border: "1px solid white !important",
        width: "130px",
        color: sageMono.black,
        "&.Mui-selected": {
          color: sageMono.white,
          backgroundColor: palette.info.main,
          "&:hover": {
            color: sageMono.darkGray,
            backgroundColor: palette.info.main,
          },
        },
        "&:hover": {
          color: sageMono.darkGray,
          backgroundColor: palette.info.light,
        },
      },
    },
  },
  // textfield
  MuiTextField: {
    styleOverrides: {
      root: {
        height: "40px",
        width: "300px",
        "& .MuiOutlinedInput-root": {
          "&:hover fieldset": {
            borderColor: palette.info.main,
          },
          "&.Mui-focused fieldset": {
            borderColor: palette.info.dark,
          },
        },
      },
    },
  },
  MuiOutlinedInput: {
    styleOverrides: {
      root: {
        borderRadius: "5px",
        paddingRight: "8px",
        "& $notchedOutline": {
          borderRadius: 10,
        },
        "& input": {
          padding: "7px 0px 8px 14px",
          fontWeight: 500,
          fontSize: "1rem",
        },
      },
      multiline: {
        padding: "10px 0px 10px 15px",
        fontWeight: 500,
        fontSize: "1rem",
      },
    },
  },
  // select
  MuiSelect: {
    styleOverrides: {
      root: {
        "&:hover": {
          "&& fieldset": {
            borderColor: palette.info.main,
          },
        },
        "&.Mui-focused": {
          "&& fieldset": {
            borderColor: palette.info.dark,
          },
        },
      },
      outlined: {
        padding: "10px 0px 10px 15px",
        alignItems: "center",
      },
      selectMenu: {
        // height: '1.1876em',
        whiteSpace: "nowrap",
        overflow: "hidden",
        textOverflow: "ellipsis",
      },
    },
  },
  MuiInputBase: {
    styleOverrides: {
      root: {
        height: "45px",
        backgroundColor: sageMono.white,
      },
      multiline: {
        height: "unset",
      },
      input: {
        backgroundColor: `${sageMono.white} !important`,
      },
    },
  },
  MuiMenuItem: {
    styleOverrides: {
      root: {},
    },
  },
  // about header
  MuiContainer: {
    styleOverrides: {
      root: {
        maxWidth: "1900px !important",
        paddingRight: 0,
        marginRight: 0,
        marginLeft: 0,
      },
    },
  },
  // dialog
  MuiDialog: {
    styleOverrides: {
      paper: {
        padding: "5px 5px 2px 5px",
      },
    },
  },
  MuiDialogTitle: {
    styleOverrides: {
      root: {
        paddingTop: "20px",
      },
    },
  },
  MuiDialogContent: {
    styleOverrides: {
      root: {
        padding: "10px 5px 0px 5px",
      },
    },
  },
  MuiDialogActions: {
    styleOverrides: {
      root: { padding: "0 19px 12px 0" },
    },
  },
  // icon
  MuiSvgIcon: {
    styleOverrides: {
      fontSizeSmall: {
        height: "16px",
        width: "16px",
      },
    },
  },
  // table
  MuiTableRow: {
    styleOverrides: {
      root: {
        "&:hover": {
          backgroundColor: `${palette.custom.light} !important`,
        },
      },
      hover: {
        "&:hover": {
          backgroundColor: palette.info.dark,
        },
      },
    },
  },
};

const theme = createTheme({
  palette,
  typography,
  shape,
  //overrides,
  components,
  // props,
  // headerStyle,
});

export default responsiveFontSizes(theme);
