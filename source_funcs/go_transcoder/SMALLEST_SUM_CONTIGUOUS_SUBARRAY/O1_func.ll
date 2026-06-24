define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 9223372036854775807, !3120, !DIExpression(), !3124)
    #dbg_value(i64 9223372036854775807, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.body, label %for.done, !dbg !3128

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %8, %if.done ], [ 0, %entry ]
  %2 = phi i64 [ %x.y.i, %if.done ], [ 9223372036854775807, %entry ]
  %3 = phi i64 [ %7, %if.done ], [ 9223372036854775807, %entry ]
    #dbg_value(i64 %1, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %3, !3120, !DIExpression(), !3130)
  %4 = icmp sgt i64 %3, 0, !dbg !3131
  br i1 %4, label %if.then, label %if.else, !dbg !3128

if.then:                                          ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3133)
  %.not2 = icmp ult i64 %1, %arr.len, !dbg !3134
  br i1 %.not2, label %lookup.next, label %lookup.throw, !dbg !3134

lookup.next:                                      ; preds = %if.then
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3134
  %6 = load i64, ptr %5, align 8, !dbg !3134
    #dbg_value(i64 %6, !3120, !DIExpression(), !3135)
  br label %if.done, !dbg !3128

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %7 = phi i64 [ %6, %lookup.next ], [ %11, %lookup.next4 ], !dbg !3124
    #dbg_value(i64 %2, !3121, !DIExpression(), !3136)
    #dbg_value(i64 %7, !3120, !DIExpression(), !3137)
    #dbg_value(i64 %2, !3138, !DIExpression(), !3144)
    #dbg_value(i64 %7, !3143, !DIExpression(), !3146)
  %x.y.i = call i64 @llvm.smin.i64(i64 %2, i64 %7), !dbg !3147
    #dbg_value(i64 %x.y.i, !3121, !DIExpression(), !3148)
  %8 = add nuw nsw i64 %1, 1, !dbg !3149
    #dbg_value(i64 %8, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3150)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3127
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3128

if.else:                                          ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3151)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3152)
  %.not = icmp ult i64 %1, %arr.len, !dbg !3153
  br i1 %.not, label %lookup.next4, label %lookup.throw3, !dbg !3153

lookup.next4:                                     ; preds = %if.else
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3153
  %10 = load i64, ptr %9, align 8, !dbg !3153
  %11 = add i64 %10, %3, !dbg !3154
    #dbg_value(i64 %11, !3120, !DIExpression(), !3154)
  br label %if.done, !dbg !3128

for.done:                                         ; preds = %if.done, %entry
  %.lcssa = phi i64 [ 9223372036854775807, %entry ], [ %x.y.i, %if.done ], !dbg !3125
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3155)
  ret i64 %.lcssa, !dbg !3156

lookup.throw:                                     ; preds = %if.then
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134

lookup.throw3:                                    ; preds = %if.else
  call fastcc void @runtime.lookupPanic(), !dbg !3153
  unreachable, !dbg !3153
}
