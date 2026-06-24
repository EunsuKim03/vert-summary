define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 0, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.loop1.preheader, label %for.done3, !dbg !3128

for.loop1.preheader:                              ; preds = %entry, %for.done
  %indvars.iv7.in = phi i64 [ %indvars.iv7, %for.done ], [ %n, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.done ], [ 0, %entry ]
  %1 = phi i64 [ %14, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %12, %for.done ], [ 0, %entry ]
  %indvars.iv7 = add i64 %indvars.iv7.in, -1, !dbg !3128
  %umax = call i64 @llvm.umax.i64(i64 %arr.len, i64 %1), !dbg !3128
  %3 = add i64 %umax, %indvars.iv, !dbg !3128
    #dbg_value(i64 %1, !3121, !DIExpression(), !3129)
    #dbg_value(i64 %1, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %.not.not = icmp ugt i64 %3, %indvars.iv7, !dbg !3128
  br label %for.body2, !dbg !3128

for.body2:                                        ; preds = %for.loop1.preheader, %lookup.next
  %4 = phi i64 [ %1, %for.loop1.preheader ], [ %13, %lookup.next ]
  %5 = phi i64 [ 0, %for.loop1.preheader ], [ %9, %lookup.next ]
  %6 = phi i64 [ %2, %for.loop1.preheader ], [ %12, %lookup.next ]
    #dbg_value(i64 %4, !3123, !DIExpression(), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %4, !3123, !DIExpression(), !3133)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3134

lookup.next:                                      ; preds = %for.body2
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !3134
  %8 = load i64, ptr %7, align 8, !dbg !3134
  %9 = add i64 %8, %5, !dbg !3135
    #dbg_value(i64 %9, !3122, !DIExpression(), !3136)
  %10 = icmp eq i64 %9, 0, !dbg !3137
  %reass.sub = sub nuw nsw i64 %4, %1, !dbg !3128
  %11 = add nuw nsw i64 %reass.sub, 1, !dbg !3128
  %x.y.i = call i64 @llvm.smax.i64(i64 %6, i64 %11), !dbg !3128
  %12 = select i1 %10, i64 %x.y.i, i64 %6, !dbg !3128
  %13 = add nuw nsw i64 %4, 1, !dbg !3138
    #dbg_value(i64 %13, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !3139
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3128

for.done:                                         ; preds = %lookup.next
  %14 = add nuw nsw i64 %1, 1, !dbg !3140
    #dbg_value(i64 %14, !3121, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3141)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3128
  %exitcond9.not = icmp eq i64 %14, %n, !dbg !3127
  br i1 %exitcond9.not, label %for.done3, label %for.loop1.preheader, !dbg !3128

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa5 = phi i64 [ 0, %entry ], [ %12, %for.done ], !dbg !3125
    #dbg_value(i64 %.lcssa5, !3120, !DIExpression(), !3142)
  ret i64 %.lcssa5, !dbg !3143

lookup.throw:                                     ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134
}
