define range(i64 0, -9223372036854775808) i64 @f_gold(i64 %W, ptr nocapture readonly %wt.data, i64 %wt.len, i64 %wt.cap, ptr nocapture readonly %val.data, i64 %val.len, i64 %val.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
  %W.fr = freeze i64 %W
  %0 = icmp eq i64 %W.fr, 0
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %lookup.next9, %entry
  %accumulator.tr.ph = phi i64 [ %x.y.i, %lookup.next9 ], [ -9223372036854775808, %entry ]
  %n.tr.ph = phi i64 [ %3, %lookup.next9 ], [ %n, %entry ]
  br i1 %0, label %common.ret.split, label %tailrecurse.preheader

tailrecurse.preheader:                            ; preds = %tailrecurse.outer
  %1 = add i64 %n.tr.ph, -1, !dbg !3038
  %.not.first_iter = icmp ult i64 %1, %wt.len, !dbg !3038
  br label %tailrecurse, !dbg !3038

tailrecurse:                                      ; preds = %tailrecurse.preheader, %lookup.next
  %n.tr = phi i64 [ %3, %lookup.next ], [ %n.tr.ph, %tailrecurse.preheader ]
    #dbg_value(i64 %W, !3034, !DIExpression(), !3039)
    #dbg_value(ptr %wt.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %wt.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %wt.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(ptr %val.data, !3036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %val.len, !3036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %val.cap, !3036, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n.tr, !3037, !DIExpression(), !3040)
  %2 = icmp eq i64 %n.tr, 0, !dbg !3041
  br i1 %2, label %common.ret.split, label %if.done, !dbg !3038

common.ret.split:                                 ; preds = %tailrecurse.outer, %tailrecurse
  %accumulator.tr.ph18 = phi i64 [ %accumulator.tr.ph, %tailrecurse ], [ -9223372036854775808, %tailrecurse.outer ]
  %accumulator.ret.tr = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %accumulator.tr.ph18, i64 range(i64 0, -9223372036854775808) 0)
  ret i64 %accumulator.ret.tr, !dbg !3038

if.done:                                          ; preds = %tailrecurse
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3042)
    #dbg_value(i64 %n.tr, !3037, !DIExpression(), !3043)
  br i1 %.not.first_iter, label %lookup.next, label %lookup.throw, !dbg !3044

lookup.next:                                      ; preds = %if.done
  %3 = add i64 %n.tr, -1, !dbg !3045
  %4 = getelementptr inbounds i64, ptr %wt.data, i64 %3, !dbg !3044
  %5 = load i64, ptr %4, align 8, !dbg !3044
    #dbg_value(i64 %W, !3034, !DIExpression(), !3046)
  %6 = icmp sgt i64 %5, %W.fr, !dbg !3047
  br i1 %6, label %tailrecurse, label %if.else, !dbg !3038

if.else:                                          ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3036, !DIExpression(), !3048)
    #dbg_value(i64 %n.tr, !3037, !DIExpression(), !3049)
  %.not3 = icmp ult i64 %3, %val.len, !dbg !3050
  br i1 %.not3, label %lookup.next9, label %lookup.throw4, !dbg !3050

lookup.next9:                                     ; preds = %if.else
    #dbg_value(i64 %W, !3034, !DIExpression(), !3051)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3052)
    #dbg_value(i64 %n.tr, !3037, !DIExpression(), !3053)
  %7 = getelementptr inbounds i64, ptr %val.data, i64 %3, !dbg !3050
  %8 = load i64, ptr %7, align 8, !dbg !3050
  %9 = sub i64 %W.fr, %5, !dbg !3054
    #dbg_value({ ptr, i64, i64 } poison, !3036, !DIExpression(), !3055)
  %10 = tail call i64 @f_gold(i64 %9, ptr nonnull %wt.data, i64 %wt.len, i64 %wt.cap, ptr %val.data, i64 %val.len, i64 %val.cap, i64 %3), !dbg !3056
  %11 = add i64 %10, %8, !dbg !3057
    #dbg_value(i64 %11, !3058, !DIExpression(), !3064)
    #dbg_value(i64 undef, !3063, !DIExpression(), !3066)
  %x.y.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %11, i64 range(i64 0, -9223372036854775808) %accumulator.tr.ph), !dbg !3067
  br label %tailrecurse.outer, !dbg !3068

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3044
  unreachable, !dbg !3044

lookup.throw4:                                    ; preds = %if.else
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050
}
