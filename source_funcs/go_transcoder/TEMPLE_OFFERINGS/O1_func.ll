define i64 @f_gold(i64 %n, ptr nocapture readonly %templeHeight.data, i64 %templeHeight.len, i64 %templeHeight.cap) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3118, !DIExpression(), !3126)
    #dbg_value(ptr %templeHeight.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %templeHeight.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %templeHeight.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(i64 0, !3120, !DIExpression(), !3127)
    #dbg_value(i64 0, !3121, !DIExpression(), !3128)
  %0 = icmp sgt i64 %n, 0, !dbg !3129
  br i1 %0, label %for.loop1.preheader, label %for.done7, !dbg !3130

for.loop1.preheader:                              ; preds = %entry, %for.done6
  %indvars.iv31.in = phi i64 [ %indvars.iv31, %for.done6 ], [ %n, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.done6 ], [ -1, %entry ]
  %1 = phi i64 [ %24, %for.done6 ], [ 0, %entry ]
  %2 = phi i64 [ %23, %for.done6 ], [ 0, %entry ]
  %indvars.iv31 = add i64 %indvars.iv31.in, -1, !dbg !3130
    #dbg_value(i64 %1, !3121, !DIExpression(), !3131)
  %.not = icmp eq i64 %1, 0, !dbg !3132
  br i1 %.not, label %for.done, label %for.body2.preheader, !dbg !3130

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %.not.first_iter = icmp ult i64 %indvars.iv, %templeHeight.len, !dbg !3133
  br label %for.body2, !dbg !3133

for.body2:                                        ; preds = %for.body2.preheader, %if.then
  %.in823 = phi i64 [ %4, %if.then ], [ %1, %for.body2.preheader ]
  %3 = phi i64 [ %10, %if.then ], [ 0, %for.body2.preheader ]
  %4 = add nsw i64 %.in823, -1, !dbg !3134
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3135)
    #dbg_value(i64 %4, !3124, !DIExpression(), !3136)
  br i1 %.not.first_iter, label %lookup.next, label %lookup.throw, !dbg !3133

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3137)
    #dbg_value(i64 %4, !3124, !DIExpression(), !3138)
  %.not5 = icmp ult i64 %.in823, %templeHeight.len, !dbg !3139
  br i1 %.not5, label %lookup.next11, label %lookup.throw10, !dbg !3139

lookup.next11:                                    ; preds = %lookup.next
  %5 = getelementptr inbounds nuw i64, ptr %templeHeight.data, i64 %4, !dbg !3133
  %6 = load i64, ptr %5, align 8, !dbg !3133
  %7 = getelementptr inbounds i64, ptr %templeHeight.data, i64 %.in823, !dbg !3139
  %8 = load i64, ptr %7, align 8, !dbg !3139
  %9 = icmp slt i64 %6, %8, !dbg !3140
  br i1 %9, label %if.then, label %for.done, !dbg !3130

if.then:                                          ; preds = %lookup.next11
  %10 = add nuw nsw i64 %3, 1, !dbg !3141
    #dbg_value(i64 %10, !3122, !DIExpression(), !3141)
    #dbg_value(i64 %4, !3124, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3142)
    #dbg_value(i64 %4, !3124, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3143)
  %exitcond.not = icmp eq i64 %10, %1, !dbg !3132
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3130

for.done:                                         ; preds = %if.then, %lookup.next11, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %1, %if.then ], [ %3, %lookup.next11 ], !dbg !3144
    #dbg_value(i64 %1, !3121, !DIExpression(), !3145)
    #dbg_value(i64 %1, !3125, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3146)
  %11 = add nuw nsw i64 %1, 1, !dbg !3147
  %12 = icmp slt i64 %11, %n, !dbg !3148
  br i1 %12, label %for.body4, label %for.done6, !dbg !3130

for.body4:                                        ; preds = %for.done, %if.then5
  %13 = phi i64 [ %21, %if.then5 ], [ %11, %for.done ]
  %.in25 = phi i64 [ %13, %if.then5 ], [ %1, %for.done ]
  %14 = phi i64 [ %20, %if.then5 ], [ 0, %for.done ]
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3149)
    #dbg_value(i64 %13, !3125, !DIExpression(), !3150)
  %.not6 = icmp ult i64 %13, %templeHeight.len, !dbg !3151
  br i1 %.not6, label %lookup.next15, label %lookup.throw14, !dbg !3151

lookup.next15:                                    ; preds = %for.body4
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3152)
    #dbg_value(i64 %13, !3125, !DIExpression(), !3153)
  %.not7 = icmp ult i64 %.in25, %templeHeight.len, !dbg !3154
  br i1 %.not7, label %lookup.next19, label %lookup.throw18, !dbg !3154

lookup.next19:                                    ; preds = %lookup.next15
  %15 = getelementptr inbounds nuw i64, ptr %templeHeight.data, i64 %13, !dbg !3151
  %16 = load i64, ptr %15, align 8, !dbg !3151
  %17 = getelementptr inbounds i64, ptr %templeHeight.data, i64 %.in25, !dbg !3154
  %18 = load i64, ptr %17, align 8, !dbg !3154
  %19 = icmp slt i64 %16, %18, !dbg !3155
  br i1 %19, label %if.then5, label %for.done6, !dbg !3130

if.then5:                                         ; preds = %lookup.next19
  %20 = add nuw i64 %14, 1, !dbg !3156
    #dbg_value(i64 %20, !3123, !DIExpression(), !3156)
    #dbg_value(i64 %13, !3125, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3157)
  %21 = add nuw nsw i64 %13, 1, !dbg !3147
    #dbg_value(i64 %21, !3125, !DIExpression(), !3158)
    #dbg_value(i64 %n, !3118, !DIExpression(), !3159)
  %exitcond33.not = icmp eq i64 %20, %indvars.iv31, !dbg !3148
  br i1 %exitcond33.not, label %for.done6, label %for.body4, !dbg !3130

for.done6:                                        ; preds = %if.then5, %lookup.next19, %for.done
  %.lcssa15 = phi i64 [ 0, %for.done ], [ %indvars.iv31, %if.then5 ], [ %14, %lookup.next19 ], !dbg !3160
    #dbg_value(i64 %.lcssa15, !3123, !DIExpression(), !3161)
    #dbg_value(i64 %.lcssa, !3122, !DIExpression(), !3162)
    #dbg_value(i64 %.lcssa15, !3163, !DIExpression(), !3169)
    #dbg_value(i64 %.lcssa, !3168, !DIExpression(), !3171)
  %x.y.i = call i64 @llvm.smax.i64(i64 %.lcssa15, i64 %.lcssa), !dbg !3172
  %22 = add i64 %2, 1, !dbg !3173
  %23 = add i64 %22, %x.y.i, !dbg !3174
    #dbg_value(i64 %23, !3120, !DIExpression(), !3174)
  %24 = add nuw nsw i64 %1, 1, !dbg !3175
    #dbg_value(i64 %24, !3121, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3118, !DIExpression(), !3176)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3130
  %exitcond34.not = icmp eq i64 %24, %n, !dbg !3129
  br i1 %exitcond34.not, label %for.done7, label %for.loop1.preheader, !dbg !3130

for.done7:                                        ; preds = %for.done6, %entry
  %.lcssa18 = phi i64 [ 0, %entry ], [ %23, %for.done6 ], !dbg !3127
    #dbg_value(i64 %.lcssa18, !3120, !DIExpression(), !3177)
  ret i64 %.lcssa18, !dbg !3178

lookup.throw:                                     ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133

lookup.throw10:                                   ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3139
  unreachable, !dbg !3139

lookup.throw14:                                   ; preds = %for.body4
  call fastcc void @runtime.lookupPanic(), !dbg !3151
  unreachable, !dbg !3151

lookup.throw18:                                   ; preds = %lookup.next15
  call fastcc void @runtime.lookupPanic(), !dbg !3154
  unreachable, !dbg !3154
}
