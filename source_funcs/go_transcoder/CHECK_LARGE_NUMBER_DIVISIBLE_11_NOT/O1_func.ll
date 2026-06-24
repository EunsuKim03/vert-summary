define range(i64 -10, 11) i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %str.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3119)
    #dbg_value(i64 %str.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3119)
    #dbg_value(i64 %str.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3119)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3121)
    #dbg_value(i64 0, !3116, !DIExpression(), !3122)
    #dbg_value(i64 0, !3117, !DIExpression(), !3123)
    #dbg_value(i64 0, !3118, !DIExpression(), !3124)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3125
  br i1 %0, label %for.body, label %for.done, !dbg !3126

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %13, %if.done ], [ 0, %entry ]
  %2 = phi i64 [ %12, %if.done ], [ 0, %entry ]
  %3 = phi i64 [ %11, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %1, !3118, !DIExpression(), !3128)
  %4 = and i64 %1, 1, !dbg !3129
  %5 = icmp eq i64 %4, 0, !dbg !3129
  br i1 %5, label %lookup.next, label %lookup.next4, !dbg !3126

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3130)
    #dbg_value(i64 %1, !3118, !DIExpression(), !3131)
  %6 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3132
  %7 = load i8, ptr %6, align 1, !dbg !3132
  %8 = add i8 %7, -48, !dbg !3133
  %9 = zext i8 %8 to i64, !dbg !3134
  %10 = add i64 %3, %9, !dbg !3135
    #dbg_value(i64 %10, !3116, !DIExpression(), !3135)
  br label %if.done, !dbg !3126

if.done:                                          ; preds = %lookup.next4, %lookup.next
  %11 = phi i64 [ %10, %lookup.next ], [ %3, %lookup.next4 ], !dbg !3122
  %12 = phi i64 [ %2, %lookup.next ], [ %18, %lookup.next4 ], !dbg !3123
  %13 = add nuw nsw i64 %1, 1, !dbg !3136
    #dbg_value(i64 %13, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3137)
  %exitcond.not = icmp eq i64 %13, %str.len, !dbg !3125
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3126

lookup.next4:                                     ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3138)
    #dbg_value(i64 %1, !3118, !DIExpression(), !3139)
  %14 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3140
  %15 = load i8, ptr %14, align 1, !dbg !3140
  %16 = add i8 %15, -48, !dbg !3141
  %17 = zext i8 %16 to i64, !dbg !3142
  %18 = add i64 %2, %17, !dbg !3143
    #dbg_value(i64 %18, !3117, !DIExpression(), !3143)
  br label %if.done, !dbg !3126

for.done.loopexit:                                ; preds = %if.done
  %19 = sub i64 %11, %12, !dbg !3144
  %20 = srem i64 %19, 11, !dbg !3145
  br label %for.done, !dbg !3144

for.done:                                         ; preds = %for.done.loopexit, %entry
  %21 = phi i64 [ 0, %entry ], [ %20, %for.done.loopexit ], !dbg !3144
    #dbg_value(i64 poison, !3116, !DIExpression(), !3146)
    #dbg_value(i64 poison, !3117, !DIExpression(), !3147)
  ret i64 %21, !dbg !3148
}
