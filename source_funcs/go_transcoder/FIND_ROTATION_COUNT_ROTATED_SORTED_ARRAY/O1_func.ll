define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3124)
  %n.fr = freeze i64 %n, !dbg !3125
  %0 = icmp eq i64 %arr.len, 0, !dbg !3126
  br i1 %0, label %lookup.throw, label %lookup.next, !dbg !3126

lookup.next:                                      ; preds = %entry
    #dbg_value(i64 poison, !3120, !DIExpression(), !3127)
    #dbg_value(i64 0, !3121, !DIExpression(), !3128)
    #dbg_value(i64 0, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3130)
  %1 = icmp sgt i64 %n.fr, 0, !dbg !3131
  br i1 %1, label %for.body.preheader, label %for.done, !dbg !3132

for.body.preheader:                               ; preds = %lookup.next
  %2 = load i64, ptr %arr.data, align 8, !dbg !3126
    #dbg_value(i64 %2, !3120, !DIExpression(), !3127)
  %3 = add nsw i64 %n.fr, -1, !dbg !3125
  %.not.not = icmp ugt i64 %arr.len, %3, !dbg !3125
  br label %for.body, !dbg !3125

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %4 = phi i64 [ %12, %lookup.next4 ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %11, %lookup.next4 ], [ 0, %for.body.preheader ]
  %6 = phi i64 [ %10, %lookup.next4 ], [ %2, %for.body.preheader ]
    #dbg_value(i64 %4, !3122, !DIExpression(), !3133)
    #dbg_value(i64 %6, !3120, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %4, !3122, !DIExpression(), !3136)
  br i1 %.not.not, label %lookup.next4, label %lookup.throw3, !dbg !3125

lookup.next4:                                     ; preds = %for.body
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !3125
  %8 = load i64, ptr %7, align 8, !dbg !3125
  %9 = icmp sgt i64 %6, %8, !dbg !3137
  %10 = call i64 @llvm.smin.i64(i64 %6, i64 %8), !dbg !3132
  %11 = select i1 %9, i64 %4, i64 %5, !dbg !3132
  %12 = add nuw nsw i64 %4, 1, !dbg !3138
    #dbg_value(i64 %12, !3122, !DIExpression(), !3133)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3130)
  %exitcond.not = icmp eq i64 %12, %n.fr, !dbg !3131
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3132

for.done:                                         ; preds = %lookup.next4, %lookup.next
  %.lcssa = phi i64 [ 0, %lookup.next ], [ %11, %lookup.next4 ], !dbg !3128
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3139)
  ret i64 %.lcssa, !dbg !3140

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !3126
  unreachable, !dbg !3126

lookup.throw3:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3125
  unreachable, !dbg !3125
}
