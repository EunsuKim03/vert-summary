define i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %str.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3118)
    #dbg_value(i64 %str.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3118)
    #dbg_value(i64 %str.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3118)
    #dbg_value(i64 0, !3115, !DIExpression(), !3119)
    #dbg_value(i64 0, !3116, !DIExpression(), !3120)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3121)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3122
  br i1 %0, label %for.body, label %common.ret, !dbg !3123

for.body:                                         ; preds = %entry, %shift.next2
  %1 = phi i64 [ %11, %shift.next2 ], [ 0, %entry ]
  %2 = phi i64 [ %10, %shift.next2 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3116, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3125)
    #dbg_value(i64 %1, !3116, !DIExpression(), !3126)
  %3 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3127
  %4 = load i8, ptr %3, align 1, !dbg !3127
  %5 = add i8 %4, -97, !dbg !3128
  %6 = zext nneg i8 %5 to i64, !dbg !3129
    #dbg_value(i64 %6, !3117, !DIExpression(), !3130)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3131)
    #dbg_value(i64 %6, !3117, !DIExpression(), !3132)
  %shift.overflow = icmp ugt i8 %5, 63, !dbg !3133
  %7 = shl nuw i64 1, %6, !dbg !3133
  %shift.result = select i1 %shift.overflow, i64 0, i64 %7, !dbg !3133
  %8 = and i64 %shift.result, %2, !dbg !3134
  %9 = icmp sgt i64 %8, 0, !dbg !3135
  br i1 %9, label %common.ret, label %shift.next2, !dbg !3123

common.ret:                                       ; preds = %for.body, %shift.next2, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ %1, %for.body ], [ -1, %shift.next2 ]
  ret i64 %common.ret.op, !dbg !3123

shift.next2:                                      ; preds = %for.body
    #dbg_value(i64 %6, !3117, !DIExpression(), !3136)
  %10 = or i64 %shift.result, %2, !dbg !3137
    #dbg_value(i64 %10, !3115, !DIExpression(), !3137)
  %11 = add nuw nsw i64 %1, 1, !dbg !3138
    #dbg_value(i64 %11, !3116, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3121)
  %exitcond.not = icmp eq i64 %11, %str.len, !dbg !3122
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !3123
}
