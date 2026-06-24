define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3125)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3125)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3126)
  %0 = icmp slt i64 %n, 1, !dbg !3127
  br i1 %0, label %common.ret, label %if.done, !dbg !3128

common.ret:                                       ; preds = %entry, %for.done
  %common.ret.op = phi i64 [ %x.y.i1, %for.done ], [ 0, %entry ]
  ret i64 %common.ret.op, !dbg !3128

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3129)
  %1 = icmp eq i64 %arr.len, 0, !dbg !3130
  br i1 %1, label %lookup.throw, label %lookup.next, !dbg !3130

lookup.next:                                      ; preds = %if.done
  %2 = load i64, ptr %arr.data, align 8, !dbg !3130
    #dbg_value(i64 %2, !3120, !DIExpression(), !3131)
    #dbg_value(i64 0, !3121, !DIExpression(), !3132)
    #dbg_value(i64 1, !3122, !DIExpression(), !3133)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3134)
  %.not6 = icmp eq i64 %n, 1, !dbg !3135
  br i1 %.not6, label %for.done, label %for.body.preheader, !dbg !3128

for.body.preheader:                               ; preds = %lookup.next
  %3 = add i64 %arr.len, -1, !dbg !3136
  %4 = add nsw i64 %n, -2, !dbg !3136
  %.not.not = icmp ugt i64 %3, %4, !dbg !3136
  br label %for.body, !dbg !3136

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %5 = phi i64 [ %11, %lookup.next4 ], [ 1, %for.body.preheader ]
  %6 = phi i64 [ %7, %lookup.next4 ], [ 0, %for.body.preheader ]
  %7 = phi i64 [ %10, %lookup.next4 ], [ %2, %for.body.preheader ]
    #dbg_value(i64 %5, !3122, !DIExpression(), !3137)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value(i64 %5, !3122, !DIExpression(), !3139)
  br i1 %.not.not, label %lookup.next4, label %lookup.throw3, !dbg !3136

lookup.next4:                                     ; preds = %for.body
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5, !dbg !3136
  %9 = load i64, ptr %8, align 8, !dbg !3136
    #dbg_value(i64 %6, !3121, !DIExpression(), !3140)
    #dbg_value(i64 %7, !3120, !DIExpression(), !3141)
    #dbg_value(i64 %6, !3142, !DIExpression(), !3148)
    #dbg_value(i64 %7, !3147, !DIExpression(), !3150)
  %x.y.i = call i64 @llvm.smin.i64(i64 %6, i64 %7), !dbg !3151
  %10 = add i64 %9, %x.y.i, !dbg !3152
    #dbg_value(i64 %10, !3123, !DIExpression(), !3153)
    #dbg_value(i64 %10, !3120, !DIExpression(), !3154)
    #dbg_value(i64 %7, !3124, !DIExpression(), !3155)
    #dbg_value(i64 %7, !3121, !DIExpression(), !3156)
  %11 = add nuw nsw i64 %5, 1, !dbg !3157
    #dbg_value(i64 %11, !3122, !DIExpression(), !3137)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3134)
  %exitcond.not = icmp eq i64 %11, %n, !dbg !3135
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3128

for.done:                                         ; preds = %lookup.next4, %lookup.next
  %.lcssa3 = phi i64 [ %2, %lookup.next ], [ %10, %lookup.next4 ], !dbg !3131
  %.lcssa = phi i64 [ 0, %lookup.next ], [ %7, %lookup.next4 ], !dbg !3132
    #dbg_value(i64 %.lcssa3, !3120, !DIExpression(), !3158)
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3159)
    #dbg_value(i64 %.lcssa3, !3142, !DIExpression(), !3160)
    #dbg_value(i64 %.lcssa, !3147, !DIExpression(), !3160)
    #dbg_value(i64 %.lcssa3, !3142, !DIExpression(), !3162)
    #dbg_value(i64 %.lcssa, !3147, !DIExpression(), !3163)
  %x.y.i1 = call i64 @llvm.smin.i64(i64 %.lcssa3, i64 %.lcssa), !dbg !3164
  br label %common.ret, !dbg !3165

lookup.throw:                                     ; preds = %if.done
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130

lookup.throw3:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3136
  unreachable, !dbg !3136
}
