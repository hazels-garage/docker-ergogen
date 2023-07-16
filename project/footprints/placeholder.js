module.exports = {
  params: {
    designator: 'PLACEHOLDER',
    side: 'F',
  },
  body: p => {
    return `
    
        (module ${p.designator} (layer ${p.side}.Cu) (tedit 5B24D78E)

            ${p.at /* parametric position */}
            (fp_text reference "${p.ref}" (at 0 0 0) (layer "${p.side}.Fab")
              (effects (font (size 1 1) (thickness 0.15)))
            )
        )
    
        `
  }
}