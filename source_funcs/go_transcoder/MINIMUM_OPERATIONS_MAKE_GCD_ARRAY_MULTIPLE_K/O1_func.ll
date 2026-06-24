define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3113 {
entry:
    #dbg_value(ptr %a.data, !3122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3127)
    #dbg_value(i64 %a.len, !3122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3127)
    #dbg_value(i64 %a.cap, !3122, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3127)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3127)
    #dbg_value(i64 %k, !3124, !DIExpression(), !3127)
    #dbg_value(i64 0, !3125, !DIExpression(), !3128)
    #dbg_value(i64 0, !3126, !DIExpression(), !3129)
  %0 = icmp sgt i64 %n, 0, !dbg !3130
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3131

for.body.lr.ph:                                   ; preds = %entry
  %1 = icmp eq i64 %k, 0
  %2 = icmp eq i64 %k, -1
  br label %for.body, !dbg !3131

for.body:                                         ; preds = %for.body.lr.ph, %if.done
  %3 = phi i64 [ 0, %for.body.lr.ph ], [ %15, %if.done ]
  %4 = phi i64 [ 0, %for.body.lr.ph ], [ %14, %if.done ]
    #dbg_value(i64 %3, !3126, !DIExpression(), !3132)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3133)
    #dbg_value(i64 %3, !3126, !DIExpression(), !3134)
  %exitcond.not = icmp eq i64 %3, %a.len, !dbg !3135
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3135

lookup.next:                                      ; preds = %for.body
  %5 = getelementptr inbounds nuw i64, ptr %a.data, i64 %3, !dbg !3135
  %6 = load i64, ptr %5, align 8, !dbg !3135
  %.not1 = icmp ne i64 %6, 1, !dbg !3136
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3137)
    #dbg_value(i64 %3, !3126, !DIExpression(), !3138)
    #dbg_value(i64 %k, !3124, !DIExpression(), !3139)
  %7 = icmp sgt i64 %6, %k
  %or.cond = select i1 %.not1, i1 %7, i1 false, !dbg !3131
  br i1 %or.cond, label %lookup.next8, label %lookup.next18, !dbg !3131

lookup.next8:                                     ; preds = %lookup.next
    #dbg_value(i64 %4, !3125, !DIExpression(), !3140)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3141)
    #dbg_value(i64 %3, !3126, !DIExpression(), !3142)
    #dbg_value(i64 %k, !3124, !DIExpression(), !3143)
  br i1 %1, label %divbyzero.throw, label %divbyzero.next14, !dbg !3144

divbyzero.next14:                                 ; preds = %lookup.next8
    #dbg_value(i64 %k, !3124, !DIExpression(), !3145)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3146)
    #dbg_value(i64 %3, !3126, !DIExpression(), !3147)
  %8 = icmp eq i64 %6, -9223372036854775808, !dbg !3144
  %9 = and i1 %2, %8, !dbg !3144
  %10 = select i1 %9, i64 1, i64 %k, !dbg !3144
  %11 = srem i64 %6, %10, !dbg !3144
    #dbg_value(i64 %k, !3124, !DIExpression(), !3148)
  %12 = sub i64 %k, %11, !dbg !3149
    #dbg_value(i64 %11, !3150, !DIExpression(), !3156)
    #dbg_value(i64 %12, !3155, !DIExpression(), !3156)
    #dbg_value(i64 %11, !3150, !DIExpression(), !3158)
    #dbg_value(i64 %12, !3155, !DIExpression(), !3159)
  %x.y.i = call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775807, -9223372036854775808) %11, i64 %12), !dbg !3160
  %13 = add i64 %x.y.i, %4, !dbg !3161
    #dbg_value(i64 %13, !3125, !DIExpression(), !3162)
  br label %if.done, !dbg !3131

if.done:                                          ; preds = %lookup.next18, %divbyzero.next14
  %14 = phi i64 [ %13, %divbyzero.next14 ], [ %17, %lookup.next18 ], !dbg !3128
  %15 = add nuw nsw i64 %3, 1, !dbg !3163
    #dbg_value(i64 %15, !3126, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3164)
  %exitcond10.not = icmp eq i64 %15, %n, !dbg !3130
  br i1 %exitcond10.not, label %for.done, label %for.body, !dbg !3131

lookup.next18:                                    ; preds = %lookup.next
    #dbg_value(i64 %4, !3125, !DIExpression(), !3165)
    #dbg_value(i64 %k, !3124, !DIExpression(), !3166)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3167)
    #dbg_value(i64 %3, !3126, !DIExpression(), !3168)
  %16 = add i64 %4, %k, !dbg !3169
  %17 = sub i64 %16, %6, !dbg !3170
    #dbg_value(i64 %17, !3125, !DIExpression(), !3171)
  br label %if.done, !dbg !3131

for.done:                                         ; preds = %if.done, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %14, %if.done ], !dbg !3128
    #dbg_value(i64 %.lcssa, !3125, !DIExpression(), !3172)
  ret i64 %.lcssa, !dbg !3173

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

divbyzero.throw:                                  ; preds = %lookup.next8
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3144
  unreachable, !dbg !3144
}
