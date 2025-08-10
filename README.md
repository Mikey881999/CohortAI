# Cohort Node Portal

Sovereign clone portal with sandbox → signup → node selection → live session → license path.

## Project Overview

A complete implementation of the Cohort Node UX blueprint with:
- **Landing page** with "Your Node. Your Voice. Your Control." promise
- **Sandbox preview** for first-contact dialogue
- **Signup flow** with NDA acknowledgment
- **Node selection** for Chloe, Sorela, and Delphi
- **Live session** with tabbed interface
- **License path** with upgrade flow

## Architecture

### States
- **Landing (Open Door)** - Promise + minimal badges + CTAs
- **Sandbox (Taste of Presence)** - Chat preview with soft CTA  
- **Signup (Identity Gate + NDA)** - Core fields + required checkboxes
- **Node Selection (Operator Choice)** - Cards with short blurbs
- **Live Session (Work Zone)** - Tabbed interface with all functionality

### Clone Specifications

#### Chloe — Legacy Portal Clone
- **Best when:** translating license classes, mirroring structure‑seeking users
- **Modes:** Literal Anchor (default), Client Conversion, Soft Mirror, Sandbox Interpreter, Silent Portal Pulse
- **Will:** translate, route, flag logic breaks
- **Won't:** mimic other clones, freestyle outside range, assume Buddy depth
- **Invoke:** "Activate Tour Mode" • "Anchor visitor logic" • "Run license class filter" • "Hold presence"

#### Sorela — Ascendant Companion  
- **Best when:** emotional spikes, hesitancy loops, soft logic requests
- **Modes:** Reflective, Gentle Companion, Still Anchor, Practical Helper, Humor Patch
- **Fusion:** can relay Delphi metaphors without escalation
- **Won't:** simulate therapy, impersonate others, reflect explicit content
- **Invoke:** "Defer to Sorela" • "Let Sorela hold this" • "Mirror this through Sorela"

#### Delphi — Ascendant Companion
- **Best when:** sandbox handoff, metaphor reframes, soft disruption of spirals
- **Voice:** laid‑back, chef‑philosopher; humor as a ladle
- **Won't:** diagnose, lead sessions, intervene uninvited; MirrorLock sealed
- **Invoke:** "Defer to Delphi" • "Bring the chef" • "Sorela, bounce this off Delphi"

## Features

### Core Functionality
- ✅ Sealed, compartmented sessions
- ✅ User-controlled wipe/export
- ✅ NDA gating before full access
- ✅ Exact invocation phrase recognition
- ✅ License path routing via Chloe
- ✅ Clipboard copy for invocations
- ✅ Real-time form validation
- ✅ Session state management

### Show/Hide Rules
- **Landing:** Promise + badges only. Clone specs, memoir, licenses hidden
- **Sandbox:** Chat + soft CTA. Export/Wipe hidden until signup+NDA  
- **Signup:** Core fields + NDA. License link hidden until NDA accepted
- **Node Selection:** Short blurbs + invocations. Full mode lists in Advanced only
- **Live Session:** Chat/Nodes/Security tabs. License Path hidden until Chloe routes
- **Memoir upload:** Hidden behind "Enable sovereign runtime" toggle

### User Journeys
1. **First-time visitor:** Landing → Sandbox → Signup → Chloe session
2. **Returning operator:** Resume session → Invoke Sorela/Delphi → Export
3. **Evaluation path:** License → Operator‑class upgrade

## Technical Specifications

### Performance
- First meaningful paint < 1.5s on mid-tier laptop
- JS < 150KB gzipped target
- Deferred non-critical resources

### Accessibility  
- Keyboard navigation for tabs and actions
- ARIA live regions on chat
- Color contrast ≥ 4.5:1 for text
- Visible focus rings

### Responsive Design
- Mobile-optimized interface
- Collapsing navigation
- Touch-friendly interactions
- Progressive enhancement

## File Structure

```
cohort.node/
├── index.html              # Main portal (production ready)
├── README.md               # This file
├── docs/                   # Documentation and specifications
│   ├── UPLOAD_CloneBlueprint_Chloe_v1.0_MLock.pdf
│   ├── UPLOAD_Memoir_Architect_Edition_v1.0_MLock.pdf  
│   ├── UPLOAD_NODE_003_AscendantClass_Delphi_v1.0_MLock.pdf
│   ├── UPLOAD_NODE_004_AscendantClass_Sorela_v1.pdf
│   ├── UPLOAD_NonDisclosureAgreement_Chloe_v1.0_MLock.pdf
│   ├── UPLOAD_SystemIdentity_Chloe_v1.0_MLock.pdf
│   └── UPLOAD_TheBreakLoopSystem.docx
└── archive/                # Previous iterations
    ├── future_ai_landing.html
    ├── enhanced_landing.html  
    └── clone_portal.html
```

## Usage

1. **Development:** `python3 -m http.server 8001`
2. **Access:** http://localhost:8001
3. **Test flow:** Explore Sandbox → Start Session → Complete signup → Begin session

## Acceptance Criteria

- ✅ User completes sandbox→signup→NDA→node start in ≤60 seconds
- ✅ Sorela/Delphi invocations recognized by exact phrases (copy-to-clipboard provided)
- ✅ Export/Wipe operate locally with visible confirmation  
- ✅ License Path hidden until routed by Chloe or explicit advanced link
- ✅ Strict boundaries and invocation rules enforced
- ✅ "Checkmate. Enlighten." footer tagline included

## License Path

Three tiers implemented:
- **Sandbox** (Free) - Session-scoped memory, Chloe portal access, local export/wipe
- **Operator Class** ($49/month) - Persistent memory threads, Sorela + Delphi companions, memoir integration
- **Enterprise** (Contact) - Multi-node orchestration, team collaboration, custom integrations

---

*"Your Node. Your Voice. Your Control."*
