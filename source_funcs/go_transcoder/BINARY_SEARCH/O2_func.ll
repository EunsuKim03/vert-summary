define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %l, i64 %r, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %r, !3036, !DIExpression(), !3040)
    #dbg_value(i64 %l, !3035, !DIExpression(), !3041)
  %.not711 = icmp slt i64 %r, %l, !dbg !3042
  br i1 %.not711, label %common.ret, label %if.then.lr.ph, !dbg !3043

if.then.lr.ph:                                    ; preds = %entry, %if.done3
  %r.tr.ph13 = phi i64 [ %r.tr8, %if.done3 ], [ %r, %entry ]
  %l.tr.ph12 = phi i64 [ %8, %if.done3 ], [ %l, %entry ]
    #dbg_value(i64 %r.tr.ph13, !3036, !DIExpression(), !3039)
    #dbg_value(i64 %l.tr.ph12, !3035, !DIExpression(), !3039)
  br label %if.then, !dbg !3043

if.then:                                          ; preds = %if.then.lr.ph, %if.then2
  %r.tr8 = phi i64 [ %r.tr.ph13, %if.then.lr.ph ], [ %7, %if.then2 ]
    #dbg_value(i64 %r.tr8, !3036, !DIExpression(), !3044)
    #dbg_value(i64 %l.tr.ph12, !3035, !DIExpression(), !3045)
  %0 = sub i64 %r.tr8, %l.tr.ph12, !dbg !3046
  %1 = sdiv i64 %0, 2, !dbg !3047
  %2 = add i64 %1, %l.tr.ph12, !dbg !3048
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3050)
  %.not1 = icmp ult i64 %2, %arr.len, !dbg !3051
  br i1 %.not1, label %lookup.next, label %lookup.throw, !dbg !3051

lookup.next:                                      ; preds = %if.then
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3051
  %4 = load i64, ptr %3, align 8, !dbg !3051
    #dbg_value(i64 %x, !3037, !DIExpression(), !3052)
  %5 = icmp eq i64 %4, %x, !dbg !3053
  br i1 %5, label %common.ret, label %lookup.next8, !dbg !3043

common.ret:                                       ; preds = %if.done3, %lookup.next, %if.then2, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ -1, %if.then2 ], [ %2, %lookup.next ], [ -1, %if.done3 ]
  ret i64 %common.ret.op, !dbg !3043

lookup.next8:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3055)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3056)
  %6 = icmp sgt i64 %4, %x, !dbg !3057
  br i1 %6, label %if.then2, label %if.done3, !dbg !3043

if.then2:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3058)
    #dbg_value(i64 %l.tr.ph12, !3035, !DIExpression(), !3059)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3060)
  %7 = add i64 %2, -1, !dbg !3061
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %7, !3036, !DIExpression(), !3040)
  %.not = icmp slt i64 %7, %l.tr.ph12, !dbg !3042
  br i1 %.not, label %common.ret, label %if.then, !dbg !3043

if.done3:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3062)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3063)
  %8 = add nuw i64 %2, 1, !dbg !3064
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %r.tr8, !3036, !DIExpression(), !3040)
    #dbg_value(i64 %8, !3035, !DIExpression(), !3041)
  %.not7 = icmp slt i64 %r.tr8, %8, !dbg !3042
  br i1 %.not7, label %common.ret, label %if.then.lr.ph, !dbg !3043

lookup.throw:                                     ; preds = %if.then
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051
}
