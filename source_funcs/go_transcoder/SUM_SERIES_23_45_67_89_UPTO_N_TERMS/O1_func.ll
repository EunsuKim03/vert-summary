define double @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(ptr undef, !3115, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3119)
    #dbg_value(ptr undef, !3115, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3119)
    #dbg_value(ptr undef, !3115, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3119)
    #dbg_value(ptr undef, !3115, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3119)
    #dbg_value(ptr undef, !3115, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3119)
    #dbg_value(ptr undef, !3115, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3119)
    #dbg_value(ptr undef, !3115, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3119)
    #dbg_value(ptr undef, !3115, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3119)
    #dbg_value(ptr undef, !3121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3124)
    #dbg_value(ptr undef, !3121, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3124)
    #dbg_value(ptr undef, !3121, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3124)
    #dbg_value(ptr undef, !3121, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3124)
    #dbg_value(ptr undef, !3121, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3124)
    #dbg_value(ptr undef, !3121, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3124)
    #dbg_value(ptr undef, !3121, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3124)
    #dbg_value(ptr undef, !3121, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3124)
    #dbg_value(ptr undef, !3126, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3129)
    #dbg_value(ptr undef, !3126, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3129)
    #dbg_value(ptr undef, !3126, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3129)
    #dbg_value(ptr undef, !3126, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3129)
    #dbg_value(ptr undef, !3126, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3129)
    #dbg_value(ptr undef, !3126, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3129)
    #dbg_value(ptr undef, !3126, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3129)
    #dbg_value(ptr undef, !3126, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3129)
    #dbg_value(ptr undef, !3131, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3134)
    #dbg_value(ptr undef, !3131, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3134)
    #dbg_value(ptr undef, !3131, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3134)
    #dbg_value(ptr undef, !3131, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3134)
    #dbg_value(ptr undef, !3131, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3134)
    #dbg_value(ptr undef, !3131, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3134)
    #dbg_value(ptr undef, !3131, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3134)
    #dbg_value(ptr undef, !3131, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3134)
    #dbg_value(i64 1, !3111, !DIExpression(), !3136)
    #dbg_value(double 0.000000e+00, !3112, !DIExpression(), !3137)
    #dbg_value(i1 true, !3113, !DIExpression(), !3138)
  %0 = icmp sgt i64 %n, 0, !dbg !3139
  br i1 %0, label %for.body, label %for.done, !dbg !3140

for.body:                                         ; preds = %entry, %for.loop.backedge
  %1 = phi i1 [ %.be171, %for.loop.backedge ], [ true, %entry ]
  %2 = phi double [ %.be, %for.loop.backedge ], [ 0.000000e+00, %entry ]
  %3 = phi i64 [ %4, %for.loop.backedge ], [ %n, %entry ]
  %stackalloc.sroa.0.0179 = phi i8 [ %stackalloc.sroa.0.0.be, %for.loop.backedge ], [ 1, %entry ]
  %stackalloc.sroa.10.0178 = phi i8 [ %stackalloc.sroa.10.0.be, %for.loop.backedge ], [ 0, %entry ]
  %stackalloc.sroa.11.0177 = phi i8 [ %stackalloc.sroa.11.0.be, %for.loop.backedge ], [ 0, %entry ]
  %stackalloc.sroa.12.0176 = phi i8 [ %stackalloc.sroa.12.0.be, %for.loop.backedge ], [ 0, %entry ]
  %stackalloc.sroa.13.0175 = phi i8 [ %stackalloc.sroa.13.0.be, %for.loop.backedge ], [ 0, %entry ]
  %stackalloc.sroa.14.0174 = phi i8 [ %stackalloc.sroa.14.0.be, %for.loop.backedge ], [ 0, %entry ]
  %stackalloc.sroa.15.0173 = phi i8 [ %stackalloc.sroa.15.0.be, %for.loop.backedge ], [ 0, %entry ]
  %stackalloc.sroa.16.0172 = phi i8 [ %stackalloc.sroa.16.0.be, %for.loop.backedge ], [ 0, %entry ]
    #dbg_value(i64 %3, !3110, !DIExpression(), !3141)
  %4 = add nsw i64 %3, -1, !dbg !3142
    #dbg_value(i64 %4, !3110, !DIExpression(), !3142)
    #dbg_value(i1 %1, !3113, !DIExpression(), !3143)
  br i1 %1, label %if.then, label %if.else, !dbg !3140

if.then:                                          ; preds = %for.body
    #dbg_value(i1 poison, !3113, !DIExpression(), !3144)
    #dbg_value(i1 false, !3113, !DIExpression(), !3145)
    #dbg_value(double %2, !3112, !DIExpression(), !3146)
    #dbg_value(ptr undef, !3131, !DIExpression(), !3134)
    #dbg_value(ptr undef, !3131, !DIExpression(), !3147)
  %stackalloc.sroa.16.0.insert.ext = zext i8 %stackalloc.sroa.16.0172 to i64, !dbg !3148
  %stackalloc.sroa.16.0.insert.shift = shl nuw i64 %stackalloc.sroa.16.0.insert.ext, 56, !dbg !3148
  %stackalloc.sroa.15.0.insert.ext = zext i8 %stackalloc.sroa.15.0173 to i64, !dbg !3148
  %stackalloc.sroa.15.0.insert.shift = shl nuw nsw i64 %stackalloc.sroa.15.0.insert.ext, 48, !dbg !3148
  %stackalloc.sroa.15.0.insert.insert = or disjoint i64 %stackalloc.sroa.15.0.insert.shift, %stackalloc.sroa.16.0.insert.shift, !dbg !3148
  %stackalloc.sroa.14.0.insert.ext = zext i8 %stackalloc.sroa.14.0174 to i64, !dbg !3148
  %stackalloc.sroa.14.0.insert.shift = shl nuw nsw i64 %stackalloc.sroa.14.0.insert.ext, 40, !dbg !3148
  %stackalloc.sroa.14.0.insert.insert = or disjoint i64 %stackalloc.sroa.15.0.insert.insert, %stackalloc.sroa.14.0.insert.shift, !dbg !3148
  %stackalloc.sroa.13.0.insert.ext = zext i8 %stackalloc.sroa.13.0175 to i64, !dbg !3148
  %stackalloc.sroa.13.0.insert.shift = shl nuw nsw i64 %stackalloc.sroa.13.0.insert.ext, 32, !dbg !3148
  %stackalloc.sroa.13.0.insert.insert = or disjoint i64 %stackalloc.sroa.14.0.insert.insert, %stackalloc.sroa.13.0.insert.shift, !dbg !3148
  %stackalloc.sroa.12.0.insert.ext = zext i8 %stackalloc.sroa.12.0176 to i64, !dbg !3148
  %stackalloc.sroa.12.0.insert.shift = shl nuw nsw i64 %stackalloc.sroa.12.0.insert.ext, 24, !dbg !3148
  %stackalloc.sroa.12.0.insert.insert = or disjoint i64 %stackalloc.sroa.13.0.insert.insert, %stackalloc.sroa.12.0.insert.shift, !dbg !3148
  %stackalloc.sroa.11.0.insert.ext = zext i8 %stackalloc.sroa.11.0177 to i64, !dbg !3148
  %stackalloc.sroa.11.0.insert.shift = shl nuw nsw i64 %stackalloc.sroa.11.0.insert.ext, 16, !dbg !3148
  %stackalloc.sroa.10.0.insert.ext = zext i8 %stackalloc.sroa.10.0178 to i64, !dbg !3148
  %stackalloc.sroa.10.0.insert.shift = shl nuw nsw i64 %stackalloc.sroa.10.0.insert.ext, 8, !dbg !3148
  %stackalloc.sroa.10.0.insert.mask = or disjoint i64 %stackalloc.sroa.12.0.insert.insert, %stackalloc.sroa.11.0.insert.shift, !dbg !3148
  %stackalloc.sroa.0.0.insert.ext = zext i8 %stackalloc.sroa.0.0179 to i64, !dbg !3148
  %stackalloc.sroa.0.0.insert.mask = or disjoint i64 %stackalloc.sroa.10.0.insert.mask, %stackalloc.sroa.10.0.insert.shift, !dbg !3148
  %stackalloc.sroa.0.0.insert.insert = or i64 %stackalloc.sroa.0.0.insert.mask, %stackalloc.sroa.0.0.insert.ext, !dbg !3148
  %5 = add i64 %stackalloc.sroa.0.0.insert.insert, 1, !dbg !3148
    #dbg_value(ptr undef, !3131, !DIExpression(), !3149)
  %6 = sitofp i64 %5 to double, !dbg !3150
    #dbg_value(ptr undef, !3126, !DIExpression(), !3129)
    #dbg_value(ptr undef, !3126, !DIExpression(), !3151)
  %7 = add i64 %stackalloc.sroa.0.0.insert.insert, 2, !dbg !3152
    #dbg_value(ptr undef, !3126, !DIExpression(), !3153)
  %8 = sitofp i64 %7 to double, !dbg !3154
  %9 = fdiv double %6, %8, !dbg !3155
  %10 = fadd double %2, %9, !dbg !3156
    #dbg_value(double %10, !3112, !DIExpression(), !3157)
  br label %for.loop.backedge, !dbg !3140

for.loop.backedge:                                ; preds = %if.then, %if.else
  %stackalloc.sroa.16.0.be.in.in = phi i64 [ %7, %if.then ], [ %14, %if.else ]
  %.be = phi double [ %10, %if.then ], [ %17, %if.else ]
  %.be171 = xor i1 %1, true, !dbg !3140
  %stackalloc.sroa.0.0.be = trunc i64 %stackalloc.sroa.16.0.be.in.in to i8, !dbg !3140
  %stackalloc.sroa.10.0.be.in = lshr i64 %stackalloc.sroa.16.0.be.in.in, 8, !dbg !3140
  %stackalloc.sroa.10.0.be = trunc i64 %stackalloc.sroa.10.0.be.in to i8, !dbg !3140
  %stackalloc.sroa.11.0.be.in = lshr i64 %stackalloc.sroa.16.0.be.in.in, 16, !dbg !3140
  %stackalloc.sroa.11.0.be = trunc i64 %stackalloc.sroa.11.0.be.in to i8, !dbg !3140
  %stackalloc.sroa.12.0.be.in = lshr i64 %stackalloc.sroa.16.0.be.in.in, 24, !dbg !3140
  %stackalloc.sroa.12.0.be = trunc i64 %stackalloc.sroa.12.0.be.in to i8, !dbg !3140
  %stackalloc.sroa.13.0.be.in = lshr i64 %stackalloc.sroa.16.0.be.in.in, 32, !dbg !3140
  %stackalloc.sroa.13.0.be = trunc i64 %stackalloc.sroa.13.0.be.in to i8, !dbg !3140
  %stackalloc.sroa.14.0.be.in = lshr i64 %stackalloc.sroa.16.0.be.in.in, 40, !dbg !3140
  %stackalloc.sroa.14.0.be = trunc i64 %stackalloc.sroa.14.0.be.in to i8, !dbg !3140
  %stackalloc.sroa.15.0.be.in = lshr i64 %stackalloc.sroa.16.0.be.in.in, 48, !dbg !3140
  %stackalloc.sroa.15.0.be = trunc i64 %stackalloc.sroa.15.0.be.in to i8, !dbg !3140
  %stackalloc.sroa.16.0.be.in = lshr i64 %stackalloc.sroa.16.0.be.in.in, 56, !dbg !3140
  %stackalloc.sroa.16.0.be = trunc nuw i64 %stackalloc.sroa.16.0.be.in to i8, !dbg !3140
    #dbg_value(i64 %4, !3110, !DIExpression(), !3141)
  %11 = icmp sgt i64 %3, 1, !dbg !3139
  br i1 %11, label %for.body, label %for.done, !dbg !3140

if.else:                                          ; preds = %for.body
    #dbg_value(i1 poison, !3113, !DIExpression(), !3158)
    #dbg_value(i1 true, !3113, !DIExpression(), !3159)
    #dbg_value(double %2, !3112, !DIExpression(), !3160)
    #dbg_value(ptr undef, !3121, !DIExpression(), !3124)
    #dbg_value(ptr undef, !3121, !DIExpression(), !3161)
  %stackalloc.sroa.16.0.insert.ext158 = zext i8 %stackalloc.sroa.16.0172 to i64, !dbg !3162
  %stackalloc.sroa.16.0.insert.shift159 = shl nuw i64 %stackalloc.sroa.16.0.insert.ext158, 56, !dbg !3162
  %stackalloc.sroa.15.0.insert.ext137 = zext i8 %stackalloc.sroa.15.0173 to i64, !dbg !3162
  %stackalloc.sroa.15.0.insert.shift138 = shl nuw nsw i64 %stackalloc.sroa.15.0.insert.ext137, 48, !dbg !3162
  %stackalloc.sroa.15.0.insert.insert140 = or disjoint i64 %stackalloc.sroa.15.0.insert.shift138, %stackalloc.sroa.16.0.insert.shift159, !dbg !3162
  %stackalloc.sroa.14.0.insert.ext116 = zext i8 %stackalloc.sroa.14.0174 to i64, !dbg !3162
  %stackalloc.sroa.14.0.insert.shift117 = shl nuw nsw i64 %stackalloc.sroa.14.0.insert.ext116, 40, !dbg !3162
  %stackalloc.sroa.14.0.insert.insert119 = or disjoint i64 %stackalloc.sroa.15.0.insert.insert140, %stackalloc.sroa.14.0.insert.shift117, !dbg !3162
  %stackalloc.sroa.13.0.insert.ext95 = zext i8 %stackalloc.sroa.13.0175 to i64, !dbg !3162
  %stackalloc.sroa.13.0.insert.shift96 = shl nuw nsw i64 %stackalloc.sroa.13.0.insert.ext95, 32, !dbg !3162
  %stackalloc.sroa.13.0.insert.insert98 = or disjoint i64 %stackalloc.sroa.14.0.insert.insert119, %stackalloc.sroa.13.0.insert.shift96, !dbg !3162
  %stackalloc.sroa.12.0.insert.ext74 = zext i8 %stackalloc.sroa.12.0176 to i64, !dbg !3162
  %stackalloc.sroa.12.0.insert.shift75 = shl nuw nsw i64 %stackalloc.sroa.12.0.insert.ext74, 24, !dbg !3162
  %stackalloc.sroa.12.0.insert.insert77 = or disjoint i64 %stackalloc.sroa.13.0.insert.insert98, %stackalloc.sroa.12.0.insert.shift75, !dbg !3162
  %stackalloc.sroa.11.0.insert.ext53 = zext i8 %stackalloc.sroa.11.0177 to i64, !dbg !3162
  %stackalloc.sroa.11.0.insert.shift54 = shl nuw nsw i64 %stackalloc.sroa.11.0.insert.ext53, 16, !dbg !3162
  %stackalloc.sroa.10.0.insert.ext32 = zext i8 %stackalloc.sroa.10.0178 to i64, !dbg !3162
  %stackalloc.sroa.10.0.insert.shift33 = shl nuw nsw i64 %stackalloc.sroa.10.0.insert.ext32, 8, !dbg !3162
  %stackalloc.sroa.10.0.insert.mask34 = or disjoint i64 %stackalloc.sroa.12.0.insert.insert77, %stackalloc.sroa.11.0.insert.shift54, !dbg !3162
  %stackalloc.sroa.0.0.insert.ext15 = zext i8 %stackalloc.sroa.0.0179 to i64, !dbg !3162
  %stackalloc.sroa.0.0.insert.mask16 = or disjoint i64 %stackalloc.sroa.10.0.insert.mask34, %stackalloc.sroa.10.0.insert.shift33, !dbg !3162
  %stackalloc.sroa.0.0.insert.insert17 = or i64 %stackalloc.sroa.0.0.insert.mask16, %stackalloc.sroa.0.0.insert.ext15, !dbg !3162
  %12 = add i64 %stackalloc.sroa.0.0.insert.insert17, 1, !dbg !3162
    #dbg_value(ptr undef, !3121, !DIExpression(), !3163)
  %13 = sitofp i64 %12 to double, !dbg !3164
    #dbg_value(ptr undef, !3115, !DIExpression(), !3119)
    #dbg_value(ptr undef, !3115, !DIExpression(), !3165)
  %14 = add i64 %stackalloc.sroa.0.0.insert.insert17, 2, !dbg !3166
    #dbg_value(ptr undef, !3115, !DIExpression(), !3167)
  %15 = sitofp i64 %14 to double, !dbg !3168
  %16 = fdiv double %13, %15, !dbg !3169
  %17 = fsub double %2, %16, !dbg !3170
    #dbg_value(double %17, !3112, !DIExpression(), !3171)
  br label %for.loop.backedge, !dbg !3140

for.done:                                         ; preds = %for.loop.backedge, %entry
  %.lcssa = phi double [ 0.000000e+00, %entry ], [ %.be, %for.loop.backedge ], !dbg !3137
    #dbg_value(double %.lcssa, !3112, !DIExpression(), !3172)
  ret double %.lcssa, !dbg !3173
}
