define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3125)
  %n.fr = freeze i64 %n, !dbg !3126
  %0 = icmp eq i64 %a.len, 0, !dbg !3127
  br i1 %0, label %lookup.throw, label %lookup.next, !dbg !3127

lookup.next:                                      ; preds = %entry
  %1 = load i64, ptr %a.data, align 8, !dbg !3127
    #dbg_value(i64 %1, !3120, !DIExpression(), !3128)
    #dbg_value(i64 1, !3121, !DIExpression(), !3129)
    #dbg_value(i64 1, !3122, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %2 = icmp sgt i64 %n.fr, 1, !dbg !3132
  br i1 %2, label %for.body.preheader, label %for.loop1.preheader, !dbg !3133

for.body.preheader:                               ; preds = %lookup.next
  %3 = add i64 %a.len, -1, !dbg !3126
  %4 = add nsw i64 %n.fr, -2, !dbg !3126
  %.not11.not = icmp ugt i64 %3, %4, !dbg !3126
  br label %for.body, !dbg !3126

for.loop1.preheader:                              ; preds = %lookup.next7, %lookup.next
  %.lcssa5 = phi i64 [ %1, %lookup.next ], [ %10, %lookup.next7 ], !dbg !3128
  %5 = add i64 %n.fr, 1
    #dbg_value(i64 2, !3123, !DIExpression(), !3134)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3135)
  %.not7 = icmp slt i64 %5, 2, !dbg !3136
  br i1 %.not7, label %for.done3, label %for.body2, !dbg !3133

for.body:                                         ; preds = %for.body.preheader, %lookup.next7
  %6 = phi i64 [ %11, %lookup.next7 ], [ 1, %for.body.preheader ]
  %7 = phi i64 [ %10, %lookup.next7 ], [ %1, %for.body.preheader ]
    #dbg_value(i64 %6, !3122, !DIExpression(), !3137)
    #dbg_value(i64 %7, !3120, !DIExpression(), !3138)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3139)
    #dbg_value(i64 %6, !3122, !DIExpression(), !3140)
  br i1 %.not11.not, label %lookup.next7, label %lookup.throw6, !dbg !3126

lookup.next7:                                     ; preds = %for.body
  %8 = getelementptr inbounds nuw i64, ptr %a.data, i64 %6, !dbg !3126
  %9 = load i64, ptr %8, align 8, !dbg !3126
  %10 = xor i64 %9, %7, !dbg !3141
    #dbg_value(i64 %10, !3120, !DIExpression(), !3142)
  %11 = add nuw nsw i64 %6, 1, !dbg !3143
    #dbg_value(i64 %11, !3122, !DIExpression(), !3137)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %exitcond.not = icmp eq i64 %11, %n.fr, !dbg !3132
  br i1 %exitcond.not, label %for.loop1.preheader, label %for.body, !dbg !3133

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %12 = phi i64 [ %15, %for.body2 ], [ 2, %for.loop1.preheader ]
  %13 = phi i64 [ %14, %for.body2 ], [ 1, %for.loop1.preheader ]
    #dbg_value(i64 %13, !3121, !DIExpression(), !3144)
    #dbg_value(i64 %12, !3123, !DIExpression(), !3145)
  %14 = xor i64 %12, %13, !dbg !3146
    #dbg_value(i64 %14, !3121, !DIExpression(), !3147)
  %15 = add i64 %12, 1, !dbg !3148
    #dbg_value(i64 %15, !3123, !DIExpression(), !3134)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3135)
  %.not = icmp sgt i64 %15, %5, !dbg !3136
  br i1 %.not, label %for.done3, label %for.body2, !dbg !3133

for.done3:                                        ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ 1, %for.loop1.preheader ], [ %14, %for.body2 ], !dbg !3129
    #dbg_value(i64 %.lcssa5, !3120, !DIExpression(), !3149)
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3150)
  %16 = xor i64 %.lcssa, %.lcssa5, !dbg !3151
  ret i64 %16, !dbg !3152

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !3127
  unreachable, !dbg !3127

lookup.throw6:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3126
  unreachable, !dbg !3126
}
