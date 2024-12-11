" Vim syntax file
" Language: CFOUR
" Maintainer: Paweł Wójcik <https://github.com/the-pawel-wojcik>
" Last Change: 2023 Jul 16
"
" To learn more on where you should put the syntax file read :h 44.11.
" To learn more about editing a syntax file :h usr_44.
" This documet uses folds. Open and close them with za. Learn more :h usr_28.

if exists("b:current_syntax")
 finish
endif

" main CFOUR call {{{
syn case match
syn region c4config 
            \ matchgroup=c4jobspec start='\*CFOUR('
            \ skip='([aDTQP2])' 
            \ matchgroup=c4jobspec end=')'
            \ contains=c4key,c4error
" }}}

" CFOUR's keywords {{{
" keywords are case insensitive
syn case ignore
" keywords are followed by a spearator or an option value 
sy cluster c4kwVal contains=c4separator,c4keyvalue

" For these keys special value handling is implemented
sy keyword c4key BASIS nextgroup=c4separator,basisInput contained skipwhite
sy keyword c4key ESTATE_SYM nextgroup=c4separator contained skipwhite
sy keyword c4key EXCITE nextgroup=c4separator,c4excitevalue contained skipwhite

" all below are generated automatically from the xjoda listing
sy keyword c4key ABCDTYPE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ANHARMONIC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ANH_ALGORIT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ANH_DERIVAT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ANH_MODE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ANH_POINTS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ANH_STEPSIZ nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ANH_SYMMETR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key AO_LADDERS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key AUXBASIS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key AV_SCF nextgroup=@c4kwVal contained skipwhite
sy keyword c4key BFIELD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key BOTHVECTORS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key BOX_POTENT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key BREIT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key BRUCK_CONV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key BRUECKNER nextgroup=@c4kwVal contained skipwhite
sy keyword c4key BUFFERSIZE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CACHE_RECS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CALC[LEVEL] nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_GECCO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_GUESS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_INPUT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_ITMAX nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_JACDAV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_MICMAX nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_MICMIN nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_MICRO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_MITMAX nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_MMAX nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CAS_PRINT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CCORBOPT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CC_CONV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CC_EXPORDER nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CC_EXTRAPOL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CC_GUESS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CC_MAXCYC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CC_PRO[GRAM] nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CHARGE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CHOLESKY nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CIS_CONV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key COMM_SIZE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CONSTANT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CONTINUUM nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CONTRACTION nextgroup=@c4kwVal contained skipwhite
sy keyword c4key COORDINATES nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CPHF_CONVER nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CPHF_MAXCYC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CUBIC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CURVILINEAR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CV_ELEMENT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CV_ORBITALS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key CV_SEPARATE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DBOC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DCT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DERIV_LEV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DEVMEM_SIZE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DF nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DIAG_MRCC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DIFF_TYPE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DIRECT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key DROPMO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ECP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EIGENVECTOR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EL_ANHARM nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOMFOLLOW nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOMIP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOMLEVEL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOM_MRCC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOM_NONIT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOM_NSING nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOM_NSTATES nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOM_NTRIP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOM_ORDER nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EOM_PROPSTA nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ESTATE_CONV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ESTATE_DERI nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ESTATE_DIAG nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ESTATE_LOCK nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ESTATE_MAX[CYC] nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ESTATE_PROP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EVAL_HESS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EXCITATION nextgroup=@c4kwVal contained skipwhite
sy keyword c4key EXTERN_POT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FCGRADNEW nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FC_FIELD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FD_CALTYPE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FD_PROJECT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FD_STEPSIZE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FD_USEGROUP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FILE_RECSIZ nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FINITE_PERT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FIXGEOM nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FOCK nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FREQ_ALGO[RITHM] nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FROZEN_CORE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key FROZEN_VIRT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GAMMA_ABCD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GAMMA_ABCI nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GENBAS_1 nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GENBAS_2 nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GENBAS_3 nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GENBAS_4 nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GEO_CONV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GEO_MAXCYC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GEO_MAXSTEP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GEO_METHOD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GIAO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GIMIC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GRID nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GRID_ALGO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key GUESS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key HBAR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key HESS_TYPE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key HF2_FILE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key HFSTABILITY nextgroup=@c4kwVal contained skipwhite
sy keyword c4key INCORE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key INPUT_MRCC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key INTEGRALS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key IRPSING nextgroup=@c4kwVal contained skipwhite
sy keyword c4key JODA_PRINT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key KEYWORD_OUT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LINDEP_TOL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LINEQ_CONV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LINEQ_EXPOR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LINEQ_MAXCY nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LINEQ_TYPE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LMP2_TYP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LOCK_ORBOCC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LOC_CONV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key LOC_TYP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key MEMORY[_SIZE] nextgroup=@c4kwVal contained skipwhite
sy keyword c4key MEM_UNIT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key MRCC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key MULT[IPLICTY] nextgroup=@c4kwVal contained skipwhite
sy keyword c4key NACOUPLING nextgroup=@c4kwVal contained skipwhite
sy keyword c4key NCONTINUUM nextgroup=@c4kwVal contained skipwhite
sy keyword c4key NEGEVAL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key NEWNORM nextgroup=@c4kwVal contained skipwhite
sy keyword c4key NON-HF nextgroup=@c4kwVal contained skipwhite
sy keyword c4key NTOP_TAMP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key NUC_MODEL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key OCCUPATION nextgroup=@c4kwVal contained skipwhite
sy keyword c4key OPEN-SHELL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key OPTVIB nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ORBITALS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PARALLEL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PARA_INT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PARA_PRINT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PERT_ORB nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PNO_THR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PNO_USE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key POINTS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PRINT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PROPS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PROP_INTEGR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key PSI nextgroup=@c4kwVal contained skipwhite
sy keyword c4key QC_ALG nextgroup=@c4kwVal contained skipwhite
sy keyword c4key QC_LINALG nextgroup=@c4kwVal contained skipwhite
sy keyword c4key QC_MAXCYC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key QC_RTRUST nextgroup=@c4kwVal contained skipwhite
sy keyword c4key QC_SKIPSCF nextgroup=@c4kwVal contained skipwhite
sy keyword c4key QC_START nextgroup=@c4kwVal contained skipwhite
sy keyword c4key QRHFGUESS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key QUARTIC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key Q_MAXSCFCY nextgroup=@c4kwVal contained skipwhite
sy keyword c4key RAMAN_INT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key RAMAN_ORB nextgroup=@c4kwVal contained skipwhite
sy keyword c4key RDO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key REDUCE_REPR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key REFERENCE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key RELATIVIST nextgroup=@c4kwVal contained skipwhite
sy keyword c4key RELAX_DENS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key RESET_FLAGS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key RESTART_CC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ROT_EVEC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SACC_ANSATZ nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SACC_CALC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SACC_ORBS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SACC_PROP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SAVE_INTS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCALE_ON nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_CONV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_DAMPING nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_EXPORDE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_EXPSTAR nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_EXTRAPO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_MAXCYC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_NOSTOP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_ORBITAL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_PRINT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SCF_PROG nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SD_FIELD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SOPERT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SPHERICAL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SPINORBIT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SPINROTATIO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SPIN_FLIP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SPIN_ORBIT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SPIN_SCAL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key STAB_FOLLOW nextgroup=@c4kwVal contained skipwhite
sy keyword c4key STEEPSCALE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key STEOM_ACT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key STEOM_OCUT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key STEOM_VCUT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SUBGROUP nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SUBGRPAXIS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SYMMETRY nextgroup=@c4kwVal contained skipwhite
sy keyword c4key SYM_CHECK nextgroup=@c4kwVal contained skipwhite
sy keyword c4key T3_EXTRAPOL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key T4_EXTRAPOL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key TAMP_SUM nextgroup=@c4kwVal contained skipwhite
sy keyword c4key TESTSUITE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key THC nextgroup=@c4kwVal contained skipwhite
sy keyword c4key THERMOCH nextgroup=@c4kwVal contained skipwhite
sy keyword c4key TOL_CHOLESK nextgroup=@c4kwVal contained skipwhite
sy keyword c4key TRANGRAD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key TRANS_INV nextgroup=@c4kwVal contained skipwhite
sy keyword c4key TREAT_PERT nextgroup=@c4kwVal contained skipwhite
sy keyword c4key TRIP_ALGORI nextgroup=@c4kwVal contained skipwhite
sy keyword c4key TWOSTATE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key UIJ_THRESHO nextgroup=@c4kwVal contained skipwhite
sy keyword c4key UNITS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key UNOS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key UPDATE_HESS nextgroup=@c4kwVal contained skipwhite
sy keyword c4key VIBPHASE nextgroup=@c4kwVal contained skipwhite
sy keyword c4key VIBRATION nextgroup=@c4kwVal contained skipwhite
sy keyword c4key VIB[_ALGORITHM] nextgroup=@c4kwVal contained skipwhite
sy keyword c4key VNATORB nextgroup=@c4kwVal contained skipwhite
sy keyword c4key VTRAN nextgroup=@c4kwVal contained skipwhite
sy keyword c4key X2CKEY nextgroup=@c4kwVal contained skipwhite
sy keyword c4key XFIELD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key XFORM_TOL nextgroup=@c4kwVal contained skipwhite
sy keyword c4key YFIELD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ZFIELD nextgroup=@c4kwVal contained skipwhite
sy keyword c4key ZSCALE_EXP nextgroup=@c4kwVal contained skipwhite
" }}}

syntax match c4separator '=' nextgroup=basisInput,c4keyvalue,c4excitevalue skipwhite contained

" CFOUR's option values {{{
" Back to the case sensitive part
syn case match
" Numerical value (general)
syntax match c4keyvalue "-\?\d\+" contained
" ABCDTYPE allowed values
syntax match c4keyvalue 'AOBASIS' contained
" calclevel allowed values
syntax match c4keyvalue 'HF' contained
syntax match c4keyvalue 'SCF' contained
syntax match c4keyvalue 'MP2' contained
syntax match c4keyvalue 'MBPT(2)' contained
syntax match c4keyvalue 'MBPT[2]' contained
syntax match c4keyvalue 'CC2' contained
syntax match c4keyvalue 'CC3' contained
syntax match c4keyvalue 'CCSD' contained
syntax match c4keyvalue 'CCSD(T)' contained
syntax match c4keyvalue 'CCSD(T)(a)' contained
syntax match c4keyvalue 'CCSDT' contained
syntax match c4keyvalue 'CCSDT-3' contained
syntax match c4keyvalue 'CCSDTQ' contained
" CC_PORG allowed values
syntax match c4keyvalue 'NCC' contained
syntax match c4keyvalue 'ECC' contained
syntax match c4keyvalue 'VCC' contained
" COORD allowed values
syntax match c4keyvalue "CARTESIAN" contained
" CONTINUUM allowed values
syntax match c4keyvalue "OCCUPIED" contained
syntax match c4keyvalue "DOCCUPIED" contained
syntax match c4keyvalue "VIRTUAL" contained
syntax match c4keyvalue "DVIRTUAL" contained
" eom_nonit allowed values
syntax match c4keyvalue "QTP" contained
syntax match c4keyvalue "STAR" contained
" ESTATE_PROP allowed value
" matches suff like 13\0\12\1
syntax match c4keyvalue "EXPECTATION" contained
" ESTATE_SYM allowed value 
syntax match c4keyvalue "\d\+\(\/\d\+\)\+" contained
" EXCITE options
syn match c4excitevalue 'CIS' contained
syn match c4excitevalue 'CIS(D)' contained
syn match c4excitevalue 'EOMIP' contained
syn match c4excitevalue 'EOMEE' contained
syn match c4excitevalue 'EOMEA' contained
" FROZEN_CORE allowed value
syntax match c4keyvalue "ON" contained
syntax match c4keyvalue "OFF" contained
" GEO_METHOD allowed values
syntax match c4keyvalue "RFA" contained
syntax match c4keyvalue "TS" contained
" GRID allowed values
syntax match c4keyvalue "CARTESIAN" contained
" GRID allowed values
syntax match c4keyvalue "CARTESIAN" contained
" GRID_ALGORITHM allowed values
syntax match c4keyvalue "PARALLEL" contained
" MEM_UNIT allowed value
syntax match c4keyvalue "GB" contained
" " RESTART_CC allowed value
" syntax match c4keyvalue "ON" contained
" syntax match c4keyvalue "OFF" contained
" SCF_PROG allowed values
syntax match c4keyvalue "DQCSCF" contained
syntax match c4keyvalue "QCSCF" contained
" UNITS allowed values
syntax match c4keyvalue "BOHR" contained
" VIB allowed values
syntax match c4keyvalue "ANALYTIC" contained
syntax match c4keyvalue "FINDIF" contained
syntax match c4keyvalue "PARALLEL" contained
" }}}

" CFOUR's ZMAT's Errors {{{
" Comma at the end of a line is an error
syn match c4error ',\s*$' contained
" }}}

" Basis option values {{{1
syn match basisInput 'SPECIAL' contained
" List all basis sets with:
" grep -P -i '.{1,2}:' ~/tools/cfour19/basis/GENBAS | grep -v "^!" \
" | awk -F: '{print $2}' | sort | uniq
syn match basisInput 'ANO0' contained
syn match basisInput 'ANO1' contained
syn match basisInput 'ANO2' contained
syn match basisInput '10s4p3d' contained
syn match basisInput '10s4p3d2f' contained
syn match basisInput '13s9p4d3f' contained
syn match basisInput '13s9p4d3f2g' contained
syn match basisInput '15s11p4d3f' contained
syn match basisInput '15s12p4d3f2g' contained
syn match basisInput '17s13p4d3f2g' contained
syn match basisInput '3-21G' contained
syn match basisInput '4-31G' contained
syn match basisInput '6-311G' contained
syn match basisInput '6-311G\*' contained
syn match basisInput '6-311G\*\*' contained
syn match basisInput '6-31G' contained
syn match basisInput '6-31G\*' contained
syn match basisInput '6-31G\*\*' contained
syn match basisInput '8s3p2d' contained
syn match basisInput '8s4p3d2f' contained
syn match basisInput 'ANO-RCC' contained
syn match basisInput 'ANORCC0' contained
syn match basisInput 'ANORCC1' contained
syn match basisInput 'ANORCC2' contained
syn match basisInput 'ANO-RCC-VTZP' contained
syn match basisInput 'ANOX2C0' contained
syn match basisInput 'ANOX2C1' contained
syn match basisInput 'ANOX2C2' contained
syn match basisInput 'augccpV5Z' contained
syn match basisInput 'augccpV5ZPP' contained
syn match basisInput 'augccpVQZPP' contained
syn match basisInput 'AUG-PCV5Z' contained
syn match basisInput 'AUG-PCV5Z' contained
syn match basisInput 'AUG-PCV5Z' contained
syn match basisInput 'AUG-PCV5Z' contained
syn match basisInput 'AUG-PCV6Z' contained
syn match basisInput 'AUG-PCV6Z' contained
syn match basisInput 'AUG-PCVDZ' contained
syn match basisInput 'AUG-PCVDZ' contained
syn match basisInput 'AUG-PCVDZ' contained
syn match basisInput 'AUG-PCVDZ' contained
syn match basisInput 'AUG-PCVQZ' contained
syn match basisInput 'AUG-PCVQZ' contained
syn match basisInput 'AUG-PCVQZ-OLD' contained
syn match basisInput 'AUG-PCVQZ-OLD-unc' contained
syn match basisInput 'AUG-PCVQZ-unc' contained
syn match basisInput 'AUG-PCVQZ-unc' contained
syn match basisInput 'AUG-PCVTZ' contained
syn match basisInput 'AUG-PCVTZ' contained
syn match basisInput 'AUG-PV5Z' contained
syn match basisInput 'AUG-PV5Z' contained
syn match basisInput 'AUG-PV5Z' contained
syn match basisInput 'AUG-PV5Z_DK' contained
syn match basisInput 'AUG-PV6Z' contained
syn match basisInput 'AUG-PV6Z' contained
syn match basisInput 'AUG-PVDZ' contained
syn match basisInput 'AUG-PVDZ' contained
syn match basisInput 'AUG-PVDZ' contained
syn match basisInput 'AUG-PVDZ' contained
syn match basisInput 'AUG-PVDZ' contained
syn match basisInput 'AUG-PVDZ' contained
syn match basisInput 'AUG-PVDZ' contained
syn match basisInput 'AUG-PVQZ' contained
syn match basisInput 'AUG-PVQZ' contained
syn match basisInput 'AUG-PVQZ' contained
syn match basisInput 'AUG-PVQZ' contained
syn match basisInput 'AUG-PVQZ' contained
syn match basisInput 'AUG-PVQZ' contained
syn match basisInput 'AUG-PVQZ_DK' contained
syn match basisInput 'AUG-PVTZ' contained
syn match basisInput 'AUG-PVTZ' contained
syn match basisInput 'AUG-PVTZ' contained
syn match basisInput 'AUG-PVTZ' contained
syn match basisInput 'AUG-PVTZ' contained
syn match basisInput 'AUG-PVTZ' contained
syn match basisInput 'AUG-PVTZ_DK' contained
syn match basisInput 'AUG-PVTZ-PP' contained
syn match basisInput 'AUG-PWCV5Z' contained
syn match basisInput 'AUG-PWCVDZ' contained
syn match basisInput 'AUG-PWCVQZ' contained
syn match basisInput 'AUG-PWCVTZ' contained
syn match basisInput 'cc-pVDZ-PP' contained
syn match basisInput 'ccpVDZPP' contained
syn match basisInput 'ccpVDZPPT' contained
syn match basisInput 'cc-pVQZ-PP' contained
syn match basisInput 'cc-pVTZ-PP' contained
syn match basisInput 'CLARKSON' contained
syn match basisInput 'CONTINUUM' contained
syn match basisInput 'D95' contained
syn match basisInput 'D95\*' contained
syn match basisInput 'DA-PCVQZ-unc' contained
syn match basisInput 'DA-PCVQZ-unc' contained
syn match basisInput 'DA-PVQZ' contained
syn match basisInput 'Def2-QZVPP' contained
syn match basisInput 'Def2-SVP' contained
syn match basisInput 'Def2-TZVP' contained
syn match basisInput 'Def2-TZVPP' contained
syn match basisInput 'dz' contained
syn match basisInput 'DZ' contained
syn match basisInput 'dzp' contained
syn match basisInput 'dzp' contained
syn match basisInput 'dzp' contained
syn match basisInput 'dzp' contained
syn match basisInput 'DZP' contained
syn match basisInput 'E117BAS' contained
syn match basisInput 'E117BAS1' contained
syn match basisInput 'E117BAS3' contained
syn match basisInput 'ECP-10-MDF' contained
syn match basisInput 'ECP-2-SBK' contained
syn match basisInput 'ECP-60' contained
syn match basisInput 'ECP60MDF' contained
syn match basisInput 'ECP-60P' contained
syn match basisInput 'LANL2DZ' contained
syn match basisInput 'LANL2DZP' contained
syn match basisInput 'MIDI' contained
syn match basisInput 'NASA' contained
syn match basisInput 'Neese' contained
syn match basisInput 'OLSEN' contained
syn match basisInput 'originalPV5Z' contained
syn match basisInput 'PARTRIDGE' contained
syn match basisInput 'PCV5Z' contained
syn match basisInput 'PCV5Z' contained
syn match basisInput 'PCV5Z' contained
syn match basisInput 'PCV5Zsu0' contained
syn match basisInput 'PCV5Zsu0' contained
syn match basisInput 'PCV5Z-unc' contained
syn match basisInput 'PCV5Z-unc' contained
syn match basisInput 'PCV6Z' contained
syn match basisInput 'PCV6Z' contained
syn match basisInput 'PCV6Z' contained
syn match basisInput 'PCV6Z' contained
syn match basisInput 'PCV6Z' contained
syn match basisInput 'PCV6Z' contained
syn match basisInput 'PCVDZ' contained
syn match basisInput 'PCVDZ' contained
syn match basisInput 'PCVDZ' contained
syn match basisInput 'PCVDZ' contained
syn match basisInput 'PCVDZ' contained
syn match basisInput 'PCVDZ' contained
syn match basisInput 'PCVQZ' contained
syn match basisInput 'PCVQZ' contained
syn match basisInput 'PCVQZ' contained
syn match basisInput 'PCVQZ-OLD' contained
syn match basisInput 'PCVQZ-OLD-unc' contained
syn match basisInput 'PCVQZ-unc' contained
syn match basisInput 'PCVQZ-unc' contained
syn match basisInput 'PCVQZ-unc' contained
syn match basisInput 'PCVTZ' contained
syn match basisInput 'PCVTZ' contained
syn match basisInput 'PCVTZ' contained
syn match basisInput 'PCVTZ' contained
syn match basisInput 'PCVTZ' contained
syn match basisInput 'PCVTZ' contained
syn match basisInput 'PCVTZsu0' contained
syn match basisInput 'PCVTZ-unc' contained
syn match basisInput 'PCVTZ-unc' contained
syn match basisInput 'PCVTZ-unc' contained
syn match basisInput 'PV5Z' contained
syn match basisInput 'PV5Z' contained
syn match basisInput 'PV5Z' contained
syn match basisInput 'PV5Z' contained
syn match basisInput 'PV5Z' contained
syn match basisInput 'PV5Z_DK' contained
syn match basisInput 'PV5Z-unc' contained
syn match basisInput 'PV5Z-unc' contained
syn match basisInput 'PV5Z-unc' contained
syn match basisInput 'PV5Z-unc' contained
syn match basisInput 'PV6Z' contained
syn match basisInput 'PV6Z' contained
syn match basisInput 'PVDZ' contained
syn match basisInput 'PVDZ' contained
syn match basisInput 'PVDZ' contained
syn match basisInput 'PVDZ' contained
syn match basisInput 'PVDZ_DK' contained
syn match basisInput 'PV(Q+D)Z' contained
syn match basisInput 'PVQZ' contained
syn match basisInput 'PVQZ' contained
syn match basisInput 'PVQZ' contained
syn match basisInput 'PVQZ' contained
syn match basisInput 'PVQZ' contained
syn match basisInput 'PVQZ_DK' contained
syn match basisInput 'PVQZ-unc' contained
syn match basisInput 'PVTZ' contained
syn match basisInput 'PVTZ' contained
syn match basisInput 'PVTZ' contained
syn match basisInput 'PVTZ' contained
syn match basisInput 'PVTZ' contained
syn match basisInput 'PVTZ' contained
syn match basisInput 'PVTZ' contained
syn match basisInput 'PVTZ_DK' contained
syn match basisInput 'PVTZ-unc' contained
syn match basisInput 'PVTZ-unc' contained
syn match basisInput 'PWCV5Z' contained
syn match basisInput 'PWCV5Z' contained
syn match basisInput 'PWCV5Z' contained
syn match basisInput 'PWCV5Z' contained
syn match basisInput 'PWCV5Z_DK' contained
syn match basisInput 'PWCV5Z-unc' contained
syn match basisInput 'PWCV5Z-unc' contained
syn match basisInput 'PWCV5Z-unc' contained
syn match basisInput 'PWCVDZ' contained
syn match basisInput 'PWCVDZ' contained
syn match basisInput 'PWCVDZ' contained
syn match basisInput 'PWCVDZ' contained
syn match basisInput 'PWCVQZ' contained
syn match basisInput 'PWCVQZ' contained
syn match basisInput 'PWCVQZ' contained
syn match basisInput 'PWCVQZ' contained
syn match basisInput 'PWCVQZ' contained
syn match basisInput 'PWCVQZ_DK' contained
syn match basisInput 'PWCVQZ-unc' contained
syn match basisInput 'PWCVQZ-unc' contained
syn match basisInput 'PWCVTZ' contained
syn match basisInput 'PWCVTZ' contained
syn match basisInput 'PWCVTZ' contained
syn match basisInput 'PWCVTZ' contained
syn match basisInput 'PWCVTZ' contained
syn match basisInput 'PWCVTZ' contained
syn match basisInput 'PWCVTZ_DK' contained
syn match basisInput 'PWCVTZ-unc' contained
syn match basisInput 'PWCVTZ-unc' contained
syn match basisInput 'PYYKKO' contained
syn match basisInput 'pz2p' contained
syn match basisInput 'pz3d1f' contained
syn match basisInput 'pz3d2f' contained
syn match basisInput 'pz3d2f' contained
syn match basisInput 'pz3p' contained
syn match basisInput 'pz3p2d' contained
syn match basisInput 'qz2d' contained
syn match basisInput 'qz2p' contained
syn match basisInput 'qz2p' contained
syn match basisInput 'qz2p' contained
syn match basisInput 'qz2p' contained
syn match basisInput 'qz2p' contained
syn match basisInput 'qz2p1d' contained
syn match basisInput 'qz2p1f' contained
syn match basisInput 'qz2p1f' contained
syn match basisInput 'qz3d1f' contained
syn match basisInput 'qzp' contained
syn match basisInput 'qzp' contained
syn match basisInput 'qzp' contained
syn match basisInput 'qzp' contained
syn match basisInput 'ROOSANODZ' contained
syn match basisInput 'ROOSANOTZ' contained
syn match basisInput 'ROOSANOTZ' contained
syn match basisInput 'SADLEJ' contained
syn match basisInput 'SBKJC' contained
syn match basisInput 'STO-3G' contained
syn match basisInput 'STUTP' contained
syn match basisInput 'STUTP1' contained
syn match basisInput 'STUTTGART' contained
syn match basisInput 'STUTTGART-ECP' contained
syn match basisInput 'SU-PCV5Z' contained
syn match basisInput 'SU+PCV5Z+s0' contained
syn match basisInput 'SU-PCVQZ' contained
syn match basisInput 'SU-PCVTZ' contained
syn match basisInput 'SU-PCVTZ' contained
syn match basisInput 'svp' contained
syn match basisInput 'svp' contained
syn match basisInput 'svp' contained
syn match basisInput 'svp' contained
syn match basisInput 'svp' contained
syn match basisInput 'svp' contained
syn match basisInput 'tz2d' contained
syn match basisInput 'tz2p' contained
syn match basisInput 'tz2p' contained
syn match basisInput 'tz2p' contained
syn match basisInput 'TZ2P' contained
syn match basisInput 'tz2plarge' contained
syn match basisInput 'tz2plarge' contained
syn match basisInput 'tz2plarge' contained
syn match basisInput 'tzp' contained
syn match basisInput 'tzp' contained
syn match basisInput 'tzp' contained
syn match basisInput 'tzp' contained
syn match basisInput 'tzplarge' contained
syn match basisInput 'tzplarge' contained
syn match basisInput 'tzplarge' contained
syn match basisInput 'tzplarge' contained
syn match basisInput 'tzplarge' contained
syn match basisInput 'tzvp' contained
syn match basisInput 'vtz2d1f' contained
syn match basisInput 'vtz2d1f+diff' contained
syn match basisInput 'vtz2p1d' contained
syn match basisInput 'vtz2p1d+diff' contained
syn match basisInput 'WMR' contained
syn match basisInput 'WMR' contained
syn match basisInput 'WMRsmall' contained
syn match basisInput 'WMRsmall' contained
syn match basisInput 'YSLEE' contained
" end of basis option values }}}

" Extra sections {{{
sy region c4excite start=/%excite\*/ end=/^\s*$/
sy region c4excite start=/%nearthis\*/ end=/^\s*$/
sy region c4excite start=/%grid/ end=/^\s*$/
sy region c4excite start=/%altgrid/ end=/^\s*$/
sy region c4excite start=/%pullgrd/ end=/^\s*$/
" sy region c4zmatrix start=/%1\w/ end=/^\s*$/
" }}}

" CFOUR's output focus points {{{
" What I want to see in the output
syn match focus_point "SCF has converged."
syn match focus_point "E(SCF)="
syn match focus_point "The reference energy is"
syn match focus_point "The total energy is"
" JODA
syn match focus_point "The full molecular point group is\s*\w\+\s*\."
syn match focus_point "The computational point group is\s*\w\+\s*\."
syn match focus_point "There are\s*\d*\s* basis functions."
syn match focus_point "JODA beginning optimization cycle"
syn match focus_point "Convergence criterion satisfied.  Optimization completed."
" xncc CC part
syn match focus_point "Total CCSDT\?Q\? energy:"
syn match focus_point "Total CCSDT\?Q\? energy:"
" xncc EOM part
syn match focus_point "EOM..-CCSDT\?Q\? \(excitation\|ionization\) energy:"
syn match focus_point "Total EOM..-CCSDT\?Q\? energy:"
syn match focus_point "Searching for\s*\d\+\s*roots in irrep\s*\d"
" xvee
syn match focus_point "Guess vectors transform as symmetry\s*\d\s*\."
syn match focus_point "Beginning symmetry block\s*\d\+\s*\.\s*\d\+\s*roots requested."
syn match focus_point "Total EOM..-CCSDT\?Q\? electronic energy\s*-\?\d\+\.\d\+ a\.u\."
" syn match focus_point "Transition energy\s*-\?\d\.\d\+ eV\s*(\s*\d\+\.\d\+ nm;\s*-\?\d\+\.\d\+ cm-1)"
syn match focus_point "Transition energy"
syn match focus_point "Norm of oscillator strength :"
" }}}

" CFOUR's output errors {{{
" What I want to see in the output
syn match c4error " ERROR"
syn match c4error "Job has terminated with error flag"
syn match c4error "--executable \w\+ finished with status\s\+\d\{2,\} in\s\+\d\+\.\d\+ seconds (walltime)."
" xsymcor
syn match c4error "This is very bad and something is wrong."
" }}}

" Highlighting {{{
" Type: Comment, Constant, Identifier, Statement, PreProc, Type, Special,
" Underlined (eg. HTML links), Ignore, Error, Todo
" Define highlighting
hi def link c4jobspec Keyword
hi def link c4key Identifier
hi def link c4error Error
hi def link c4separator Operator
hi def link c4keyvalue Constant
hi def link basisInput Constant
hi def link c4excitevalue Constant
hi def link c4excite Special
hi def link energy_value Macro
hi def link focus_point Macro
hi def link c4executable Identifier
hi def link c4zmatrix Special
hi def link c4error Error

" https://arnaudr.io/2020/08/17/modify-vim-syntax-files-for-your-taste/
" The following test requires this addition to your vimrc:
" autocmd OptionSet background if exists("g:syntax_on") | syntax on | endif
"if &background == "dark"
"  " I like DarkMagenta even on a dark background, but you know what to do
"  "hi focus_point term=bold ctermfg=LightMagenta gui=bold guifg=Magenta cterm=bold
"  hi focus_point term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta cterm=bold
"else
"  hi focus_point term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta cterm=bold
"endif

" }}}

let b:current_syntax = "cfour"

" vim: fdm=marker commentstring="\ %s
