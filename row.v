// Copyright (c) 2020 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by a GPL license
// that can be found in the LICENSE file.
module ui

pub struct RowConfig {
pub:
	height    int
	alignment VerticalAlignment
	spacing   int
	stretch   bool
	margin    MarginConfig
	children  []Widget
}

pub fn row(c RowConfig, children []Widget) &Stack {
	return stack({
		height: c.height
		vertical_alignment: c.alignment
		spacing: c.spacing
		stretch: c.stretch
		direction: .row
		margin: c.margin
	}, children)
}
