define range(i64 -1, -9223372036854775808) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 -1, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.loop1.preheader.lr.ph, label %for.done6, !dbg !3128

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %.not24 = icmp eq i64 %n, 1
  br label %for.loop1.preheader, !dbg !3128

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done5
  %1 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %19, %for.done5 ]
  %2 = phi i64 [ -1, %for.loop1.preheader.lr.ph ], [ %.lcssa14, %for.done5 ]
    #dbg_value(i64 %1, !3121, !DIExpression(), !3129)
    #dbg_value(i64 0, !3122, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  br i1 %.not24, label %for.done5, label %for.loop3.preheader.lr.ph, !dbg !3128

for.loop3.preheader.lr.ph:                        ; preds = %for.loop1.preheader
  %.not4 = icmp ult i64 %1, %arr.len
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1
  br label %for.loop3.preheader, !dbg !3128

for.loop3.preheader:                              ; preds = %for.loop3.preheader.lr.ph, %for.done
  %4 = phi i64 [ 0, %for.loop3.preheader.lr.ph ], [ %17, %for.done ]
  %5 = phi i64 [ %2, %for.loop3.preheader.lr.ph ], [ %spec.select, %for.done ]
    #dbg_value(i64 %4, !3122, !DIExpression(), !3130)
  %6 = add nuw nsw i64 %4, 1, !dbg !3132
  %.not = icmp ult i64 %4, %arr.len
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4
  br i1 %.not, label %for.body4, label %lookup.throw, !dbg !3133

for.body4:                                        ; preds = %for.loop3.preheader, %lookup.next14
  %8 = phi i64 [ %16, %lookup.next14 ], [ %6, %for.loop3.preheader ]
  %9 = phi i64 [ %spec.select, %lookup.next14 ], [ %5, %for.loop3.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %4, !3122, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %8, !3123, !DIExpression(), !3137)
  %exitcond.not = icmp eq i64 %8, %arr.len, !dbg !3138
  br i1 %exitcond.not, label %lookup.throw9, label %lookup.next10, !dbg !3138

lookup.next10:                                    ; preds = %for.body4
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3139)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3140)
  br i1 %.not4, label %lookup.next14, label %lookup.throw13, !dbg !3141

lookup.next14:                                    ; preds = %lookup.next10
  %10 = load i64, ptr %7, align 8, !dbg !3133
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %8, !dbg !3138
  %12 = load i64, ptr %11, align 8, !dbg !3138
  %13 = mul i64 %12, %10, !dbg !3142
  %14 = load i64, ptr %3, align 8, !dbg !3141
  %15 = icmp eq i64 %13, %14, !dbg !3143
  %x.y.i = call range(i64 -1, -9223372036854775808) i64 @llvm.smax.i64(i64 range(i64 -1, -9223372036854775808) %9, i64 %14)
  %spec.select = select i1 %15, i64 %x.y.i, i64 %9, !dbg !3128
    #dbg_value(i64 %8, !3123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3144)
  %16 = add nuw nsw i64 %8, 1, !dbg !3132
    #dbg_value(i64 %16, !3123, !DIExpression(), !3145)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3146)
  %exitcond25.not = icmp eq i64 %16, %n, !dbg !3147
  br i1 %exitcond25.not, label %for.done, label %for.body4, !dbg !3128

for.done:                                         ; preds = %lookup.next14
  %17 = add nuw nsw i64 %4, 1, !dbg !3148
    #dbg_value(i64 %17, !3122, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %18 = add nsw i64 %n, -2, !dbg !3149
  %exitcond26.not = icmp eq i64 %4, %18, !dbg !3149
  br i1 %exitcond26.not, label %for.done5, label %for.loop3.preheader, !dbg !3128

for.done5:                                        ; preds = %for.done, %for.loop1.preheader
  %.lcssa14 = phi i64 [ %2, %for.loop1.preheader ], [ %spec.select, %for.done ], !dbg !3125
  %19 = add nuw nsw i64 %1, 1, !dbg !3150
    #dbg_value(i64 %19, !3121, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3151)
  %exitcond27.not = icmp eq i64 %19, %n, !dbg !3127
  br i1 %exitcond27.not, label %for.done6, label %for.loop1.preheader, !dbg !3128

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa18 = phi i64 [ -1, %entry ], [ %.lcssa14, %for.done5 ], !dbg !3125
    #dbg_value(i64 %.lcssa18, !3120, !DIExpression(), !3152)
  ret i64 %.lcssa18, !dbg !3153

lookup.throw:                                     ; preds = %for.loop3.preheader
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133

lookup.throw9:                                    ; preds = %for.body4
  call fastcc void @runtime.lookupPanic(), !dbg !3138
  unreachable, !dbg !3138

lookup.throw13:                                   ; preds = %lookup.next10
  call fastcc void @runtime.lookupPanic(), !dbg !3141
  unreachable, !dbg !3141
}
