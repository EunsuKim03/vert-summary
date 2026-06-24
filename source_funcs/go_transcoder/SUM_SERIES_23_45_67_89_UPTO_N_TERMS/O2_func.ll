define double @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(ptr undef, !3031, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3035)
    #dbg_value(ptr undef, !3031, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3035)
    #dbg_value(ptr undef, !3031, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3035)
    #dbg_value(ptr undef, !3031, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3035)
    #dbg_value(ptr undef, !3031, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3035)
    #dbg_value(ptr undef, !3031, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3035)
    #dbg_value(ptr undef, !3031, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3035)
    #dbg_value(ptr undef, !3031, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3035)
    #dbg_value(ptr undef, !3037, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3040)
    #dbg_value(ptr undef, !3037, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3040)
    #dbg_value(ptr undef, !3037, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3040)
    #dbg_value(ptr undef, !3037, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3040)
    #dbg_value(ptr undef, !3037, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3040)
    #dbg_value(ptr undef, !3037, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3040)
    #dbg_value(ptr undef, !3037, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3040)
    #dbg_value(ptr undef, !3037, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3040)
    #dbg_value(ptr undef, !3042, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3045)
    #dbg_value(ptr undef, !3042, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3045)
    #dbg_value(ptr undef, !3042, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3045)
    #dbg_value(ptr undef, !3042, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3045)
    #dbg_value(ptr undef, !3042, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3045)
    #dbg_value(ptr undef, !3042, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3045)
    #dbg_value(ptr undef, !3042, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3045)
    #dbg_value(ptr undef, !3042, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3045)
    #dbg_value(ptr undef, !3047, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3050)
    #dbg_value(ptr undef, !3047, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3050)
    #dbg_value(ptr undef, !3047, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3050)
    #dbg_value(ptr undef, !3047, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3050)
    #dbg_value(ptr undef, !3047, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3050)
    #dbg_value(ptr undef, !3047, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3050)
    #dbg_value(ptr undef, !3047, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3050)
    #dbg_value(ptr undef, !3047, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3050)
    #dbg_value(i64 1, !3027, !DIExpression(), !3052)
    #dbg_value(double 0.000000e+00, !3028, !DIExpression(), !3053)
    #dbg_value(i1 true, !3029, !DIExpression(), !3054)
  %0 = icmp sgt i64 %n, 0, !dbg !3055
  br i1 %0, label %for.body, label %for.done, !dbg !3056

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i1 [ %.be171, %for.body ], [ true, %entry ]
  %2 = phi double [ %.be, %for.body ], [ 0.000000e+00, %entry ]
  %3 = phi i64 [ %4, %for.body ], [ %n, %entry ]
  %stackalloc.sroa.0.0179 = phi i64 [ %7, %for.body ], [ 1, %entry ]
  %stackalloc.sroa.10.0178 = phi i64 [ %stackalloc.sroa.10.0.be.in, %for.body ], [ 0, %entry ]
  %stackalloc.sroa.11.0177 = phi i64 [ %stackalloc.sroa.11.0.be.in, %for.body ], [ 0, %entry ]
  %stackalloc.sroa.12.0176 = phi i64 [ %stackalloc.sroa.12.0.be.in, %for.body ], [ 0, %entry ]
  %stackalloc.sroa.13.0175 = phi i64 [ %stackalloc.sroa.13.0.be.in, %for.body ], [ 0, %entry ]
  %stackalloc.sroa.14.0174 = phi i64 [ %stackalloc.sroa.14.0.be.in, %for.body ], [ 0, %entry ]
  %stackalloc.sroa.15.0173 = phi i64 [ %stackalloc.sroa.15.0.be.in, %for.body ], [ 0, %entry ]
  %stackalloc.sroa.16.0172 = phi i64 [ %stackalloc.sroa.16.0.be.in, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %3, !3026, !DIExpression(), !3057)
  %4 = add nsw i64 %3, -1, !dbg !3058
    #dbg_value(i64 %4, !3026, !DIExpression(), !3058)
    #dbg_value(i1 %1, !3029, !DIExpression(), !3059)
    #dbg_value(double %2, !3028, !DIExpression(), !3060)
    #dbg_value(double %2, !3028, !DIExpression(), !3061)
  %stackalloc.sroa.15.0.insert.ext = and i64 %stackalloc.sroa.15.0173, 71776119061217280, !dbg !3056
  %stackalloc.sroa.15.0.insert.insert = or disjoint i64 %stackalloc.sroa.15.0.insert.ext, %stackalloc.sroa.16.0172, !dbg !3056
  %stackalloc.sroa.14.0.insert.ext = and i64 %stackalloc.sroa.14.0174, 280375465082880, !dbg !3056
  %stackalloc.sroa.14.0.insert.insert = or disjoint i64 %stackalloc.sroa.15.0.insert.insert, %stackalloc.sroa.14.0.insert.ext, !dbg !3056
  %stackalloc.sroa.13.0.insert.ext = and i64 %stackalloc.sroa.13.0175, 1095216660480, !dbg !3056
  %stackalloc.sroa.13.0.insert.insert = or disjoint i64 %stackalloc.sroa.14.0.insert.insert, %stackalloc.sroa.13.0.insert.ext, !dbg !3056
  %stackalloc.sroa.12.0.insert.ext = and i64 %stackalloc.sroa.12.0176, 4278190080, !dbg !3056
  %stackalloc.sroa.12.0.insert.insert = or disjoint i64 %stackalloc.sroa.13.0.insert.insert, %stackalloc.sroa.12.0.insert.ext, !dbg !3056
  %stackalloc.sroa.11.0.insert.ext = and i64 %stackalloc.sroa.11.0177, 16711680, !dbg !3056
  %stackalloc.sroa.10.0.insert.ext = and i64 %stackalloc.sroa.10.0178, 65280, !dbg !3056
  %stackalloc.sroa.10.0.insert.mask = or disjoint i64 %stackalloc.sroa.12.0.insert.insert, %stackalloc.sroa.11.0.insert.ext, !dbg !3056
  %stackalloc.sroa.0.0.insert.ext = and i64 %stackalloc.sroa.0.0179, 255, !dbg !3056
  %stackalloc.sroa.0.0.insert.mask = or disjoint i64 %stackalloc.sroa.10.0.insert.mask, %stackalloc.sroa.10.0.insert.ext, !dbg !3056
  %stackalloc.sroa.0.0.insert.insert = or i64 %stackalloc.sroa.0.0.insert.mask, %stackalloc.sroa.0.0.insert.ext, !dbg !3056
  %5 = add i64 %stackalloc.sroa.0.0.insert.insert, 1, !dbg !3056
  %6 = sitofp i64 %5 to double, !dbg !3056
  %7 = add i64 %stackalloc.sroa.0.0.insert.insert, 2, !dbg !3056
  %8 = sitofp i64 %7 to double, !dbg !3056
  %9 = fdiv double %6, %8, !dbg !3056
  %10 = fneg double %9, !dbg !3056
  %.be.p = select i1 %1, double %9, double %10, !dbg !3056
  %.be = fadd double %2, %.be.p, !dbg !3056
  %.be171 = xor i1 %1, true, !dbg !3056
  %stackalloc.sroa.10.0.be.in = and i64 %7, -256, !dbg !3056
  %stackalloc.sroa.11.0.be.in = and i64 %7, -65536, !dbg !3056
  %stackalloc.sroa.12.0.be.in = and i64 %7, -16777216, !dbg !3056
  %stackalloc.sroa.13.0.be.in = and i64 %7, -4294967296, !dbg !3056
  %stackalloc.sroa.14.0.be.in = and i64 %7, -1099511627776, !dbg !3056
  %stackalloc.sroa.15.0.be.in = and i64 %7, -281474976710656, !dbg !3056
  %stackalloc.sroa.16.0.be.in = and i64 %7, -72057594037927936, !dbg !3056
    #dbg_value(i64 %4, !3026, !DIExpression(), !3057)
  %11 = icmp samesign ugt i64 %3, 1, !dbg !3055
  br i1 %11, label %for.body, label %for.done, !dbg !3056

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi double [ 0.000000e+00, %entry ], [ %.be, %for.body ], !dbg !3053
    #dbg_value(double %.lcssa, !3028, !DIExpression(), !3062)
  ret double %.lcssa, !dbg !3063
}
