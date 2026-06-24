define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %size) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %size, !3119, !DIExpression(), !3123)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3124)
  %size.fr = freeze i64 %size, !dbg !3125
  %0 = icmp eq i64 %a.len, 0, !dbg !3126
  br i1 %0, label %lookup.throw, label %lookup.next4, !dbg !3126

lookup.next4:                                     ; preds = %entry
    #dbg_value(i64 poison, !3120, !DIExpression(), !3127)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3128)
  %1 = load i64, ptr %a.data, align 8, !dbg !3126
    #dbg_value(i64 %1, !3120, !DIExpression(), !3127)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3129)
    #dbg_value(i64 1, !3122, !DIExpression(), !3130)
    #dbg_value(i64 %size, !3119, !DIExpression(), !3131)
  %2 = icmp sgt i64 %size.fr, 1, !dbg !3132
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !3133

for.body.preheader:                               ; preds = %lookup.next4
  %3 = add i64 %a.len, -1, !dbg !3125
  %4 = add nsw i64 %size.fr, -2, !dbg !3125
  %.not.not = icmp ugt i64 %3, %4, !dbg !3125
  br label %for.body, !dbg !3125

for.body:                                         ; preds = %for.body.preheader, %lookup.next12
  %5 = phi i64 [ %11, %lookup.next12 ], [ 1, %for.body.preheader ]
  %6 = phi i64 [ %x.y.i, %lookup.next12 ], [ %1, %for.body.preheader ]
  %7 = phi i64 [ %x.y.i1, %lookup.next12 ], [ %1, %for.body.preheader ]
    #dbg_value(i64 %5, !3122, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %5, !3122, !DIExpression(), !3136)
  br i1 %.not.not, label %lookup.next12, label %lookup.throw7, !dbg !3125

lookup.next12:                                    ; preds = %for.body
    #dbg_value(i64 %6, !3121, !DIExpression(), !3137)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value(i64 %5, !3122, !DIExpression(), !3139)
  %8 = getelementptr inbounds nuw i64, ptr %a.data, i64 %5, !dbg !3125
  %9 = load i64, ptr %8, align 8, !dbg !3125
  %10 = add i64 %9, %6, !dbg !3140
    #dbg_value(i64 %9, !3141, !DIExpression(), !3147)
    #dbg_value(i64 %10, !3146, !DIExpression(), !3149)
  %x.y.i = call i64 @llvm.smax.i64(i64 %9, i64 %10), !dbg !3150
    #dbg_value(i64 %7, !3120, !DIExpression(), !3151)
    #dbg_value(i64 %x.y.i, !3121, !DIExpression(), !3152)
    #dbg_value(i64 %7, !3141, !DIExpression(), !3153)
    #dbg_value(i64 %x.y.i, !3146, !DIExpression(), !3155)
  %x.y.i1 = call i64 @llvm.smax.i64(i64 %7, i64 %x.y.i), !dbg !3156
    #dbg_value(i64 %x.y.i1, !3120, !DIExpression(), !3157)
  %11 = add nuw nsw i64 %5, 1, !dbg !3158
    #dbg_value(i64 %11, !3122, !DIExpression(), !3134)
    #dbg_value(i64 %size, !3119, !DIExpression(), !3131)
  %exitcond.not = icmp eq i64 %11, %size.fr, !dbg !3132
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3133

for.done:                                         ; preds = %lookup.next12, %lookup.next4
  %.lcssa = phi i64 [ %1, %lookup.next4 ], [ %x.y.i1, %lookup.next12 ], !dbg !3127
    #dbg_value(i64 %.lcssa, !3120, !DIExpression(), !3159)
  ret i64 %.lcssa, !dbg !3160

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !3126
  unreachable, !dbg !3126

lookup.throw7:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3125
  unreachable, !dbg !3125
}
