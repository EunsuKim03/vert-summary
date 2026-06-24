define noundef i1 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap) local_unnamed_addr #1 !dbg !3221 {
entry:
  %j = alloca i64, align 8, !dbg !3235
    #dbg_value(ptr %s.data, !3230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3235)
    #dbg_value(i64 %s.len, !3230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3235)
    #dbg_value(i64 %s.cap, !3230, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3235)
    #dbg_value({ ptr, i64, i64 } poison, !3230, !DIExpression(), !3236)
    #dbg_value(i64 %s.len, !3231, !DIExpression(), !3237)
    #dbg_value(i64 0, !3232, !DIExpression(), !3238)
    #dbg_value(i64 0, !3232, !DIExpression(), !3239)
    #dbg_value(i64 %s.len, !3231, !DIExpression(), !3240)
  %0 = add i64 %s.len, -1, !dbg !3241
    #dbg_value(i64 0, !3233, !DIExpression(), !3242)
  store i64 %0, ptr %j, align 8, !dbg !3243
    #dbg_value(i64 %0, !3234, !DIExpression(), !3243)
    #dbg_value(i64 poison, !3233, !DIExpression(), !3244)
    #dbg_value(i64 0, !3233, !DIExpression(), !3244)
  %.not26 = icmp slt i64 %0, 0, !dbg !3245
  br i1 %.not26, label %common.ret, label %deref.next4, !dbg !3246

deref.next4:                                      ; preds = %entry, %deref.next12
  %1 = phi i64 [ %9, %deref.next12 ], [ %0, %entry ]
  %2 = phi ptr [ %j16, %deref.next12 ], [ %j, %entry ]
  %.sroa.speculated27 = phi i64 [ %8, %deref.next12 ], [ 0, %entry ]
    #dbg_value(i64 %.sroa.speculated27, !3233, !DIExpression(), !3244)
    #dbg_value({ ptr, i64, i64 } poison, !3230, !DIExpression(), !3247)
    #dbg_value(i64 %.sroa.speculated27, !3233, !DIExpression(), !3248)
  %exitcond.not = icmp eq i64 %.sroa.speculated27, %s.len, !dbg !3249
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3249

lookup.next:                                      ; preds = %deref.next4
    #dbg_value({ ptr, i64, i64 } poison, !3230, !DIExpression(), !3250)
    #dbg_value(i64 %1, !3234, !DIExpression(), !3251)
  %.not5 = icmp ult i64 %1, %s.len, !dbg !3252
  br i1 %.not5, label %lookup.next10, label %lookup.throw9, !dbg !3252

lookup.next10:                                    ; preds = %lookup.next
  %3 = getelementptr inbounds i8, ptr %s.data, i64 %.sroa.speculated27, !dbg !3249
  %4 = load i8, ptr %3, align 1, !dbg !3249
  %5 = getelementptr inbounds i8, ptr %s.data, i64 %1, !dbg !3252
  %6 = load i8, ptr %5, align 1, !dbg !3252
  %.not6 = icmp eq i8 %4, %6, !dbg !3253
  br i1 %.not6, label %deref.next12, label %common.ret, !dbg !3246

common.ret:                                       ; preds = %lookup.next10, %deref.next12, %entry
  %.not.lcssa = phi i1 [ true, %entry ], [ true, %deref.next12 ], [ false, %lookup.next10 ], !dbg !3245
  ret i1 %.not.lcssa, !dbg !3246

deref.next12:                                     ; preds = %lookup.next10
  %7 = load i64, ptr %2, align 8, !dbg !3246
  %j16 = call fastcc align 8 dereferenceable(8) ptr @runtime.alloc(), !dbg !3243
  %8 = add i64 %.sroa.speculated27, 1, !dbg !3254
    #dbg_value(i64 %8, !3257, !DIExpression(), !3254)
    #dbg_value(i64 %7, !3259, !DIExpression(), !3264)
    #dbg_value(ptr %j16, !3262, !DIExpression(), !3266)
  %9 = add i64 %7, -1, !dbg !3267
  store i64 %9, ptr %j16, align 8, !dbg !3267
    #dbg_value(i64 %8, !3233, !DIExpression(), !3244)
    #dbg_value(i64 %9, !3234, !DIExpression(), !3268)
  %.not = icmp sgt i64 %8, %9, !dbg !3245
  br i1 %.not, label %common.ret, label %deref.next4, !dbg !3246

lookup.throw:                                     ; preds = %deref.next4
  call fastcc void @runtime.lookupPanic(), !dbg !3249
  unreachable, !dbg !3249

lookup.throw9:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3252
  unreachable, !dbg !3252
}
