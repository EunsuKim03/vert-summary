define i64 @f_gold(ptr nocapture readonly %poly.data, i64 %poly.len, i64 %poly.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %poly.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %poly.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %poly.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3123)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3124)
  %n.fr = freeze i64 %n, !dbg !3125
  %0 = icmp eq i64 %poly.len, 0, !dbg !3126
  br i1 %0, label %lookup.throw, label %lookup.next, !dbg !3126

lookup.next:                                      ; preds = %entry
  %1 = load i64, ptr %poly.data, align 8, !dbg !3126
    #dbg_value(i64 %1, !3121, !DIExpression(), !3127)
    #dbg_value(i64 1, !3122, !DIExpression(), !3128)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3129)
  %2 = icmp sgt i64 %n.fr, 1, !dbg !3130
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !3131

for.body.preheader:                               ; preds = %lookup.next
  %3 = add i64 %poly.len, -1, !dbg !3125
  %4 = add nsw i64 %n.fr, -2, !dbg !3125
  %.not.not = icmp ugt i64 %3, %4, !dbg !3125
  br label %for.body, !dbg !3125

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %5 = phi i64 [ %11, %lookup.next4 ], [ 1, %for.body.preheader ]
  %6 = phi i64 [ %10, %lookup.next4 ], [ %1, %for.body.preheader ]
    #dbg_value(i64 %5, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %6, !3121, !DIExpression(), !3133)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %5, !3122, !DIExpression(), !3136)
  br i1 %.not.not, label %lookup.next4, label %lookup.throw3, !dbg !3125

lookup.next4:                                     ; preds = %for.body
  %7 = mul i64 %6, %x, !dbg !3137
  %8 = getelementptr inbounds nuw i64, ptr %poly.data, i64 %5, !dbg !3125
  %9 = load i64, ptr %8, align 8, !dbg !3125
  %10 = add i64 %9, %7, !dbg !3138
    #dbg_value(i64 %10, !3121, !DIExpression(), !3139)
  %11 = add nuw nsw i64 %5, 1, !dbg !3140
    #dbg_value(i64 %11, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3129)
  %exitcond.not = icmp eq i64 %11, %n.fr, !dbg !3130
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3131

for.done:                                         ; preds = %lookup.next4, %lookup.next
  %.lcssa = phi i64 [ %1, %lookup.next ], [ %10, %lookup.next4 ], !dbg !3127
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3141)
  ret i64 %.lcssa, !dbg !3142

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !3126
  unreachable, !dbg !3126

lookup.throw3:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3125
  unreachable, !dbg !3125
}
