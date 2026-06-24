define noundef range(i32 -2147483648, 361) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i26 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i26, label %bb7, label %bb6

bb6:                                              ; preds = %bb13, %bb13.1, %bb13.2, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 360, %start ], [ %_0.sroa.0.0.i10, %bb13 ], [ %_0.sroa.0.0.i10.1, %bb13.1 ], [ %_0.sroa.0.0.i10.2, %bb13.2 ]
  ret i32 %ans.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_12 = load i32, ptr %arr, align 8, !noundef !37
  %_1520 = icmp sgt i32 %_12, 179
  br i1 %_1520, label %bb12, label %bb13

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_13.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9102ad4e2ddcccc41523ce06867f21d3) #24
  unreachable

bb13:                                             ; preds = %bb12, %bb12.1, %bb7
  %l.sroa.0.1.lcssa = phi i64 [ 0, %bb7 ], [ 1, %bb12 ], [ 2, %bb12.1 ]
  %ans.sroa.0.1.lcssa = phi i32 [ 360, %bb7 ], [ %_0.sroa.0.0.i12, %bb12 ], [ %_0.sroa.0.0.i12.1, %bb12.1 ]
  %sum.sroa.0.1.lcssa = phi i32 [ %_12, %bb7 ], [ %15, %bb12 ], [ %17, %bb12.1 ]
  %_28 = sub i32 180, %sum.sroa.0.1.lcssa
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_28, i1 false)
  %_26 = shl i32 %_0.sroa.0.0.i, 1
  %_0.sroa.0.0.i10 = tail call noundef i32 @llvm.smin.i32(i32 %_26, i32 %ans.sroa.0.1.lcssa)
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb13
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_12.1 = load i32, ptr %1, align 4, !noundef !37
  %2 = add i32 %_12.1, %sum.sroa.0.1.lcssa
  %_1520.1 = icmp sgt i32 %2, 179
  br i1 %_1520.1, label %bb9.143, label %bb13.1

bb9.143:                                          ; preds = %bb7.1
  %_24.142 = icmp ult i64 %l.sroa.0.1.lcssa, 2
  br i1 %_24.142, label %bb12.149, label %panic1

bb12.149:                                         ; preds = %bb9.143
  %_20.neg.144 = shl nuw i32 %2, 1
  %_18.145 = add i32 %_20.neg.144, -360
  %_0.sroa.0.0.i12.146 = tail call noundef i32 @llvm.smin.i32(i32 %_18.145, i32 %_0.sroa.0.0.i10)
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %l.sroa.0.1.lcssa
  %_22.147 = load i32, ptr %3, align 4, !noundef !37
  %4 = sub i32 %2, %_22.147
  %5 = add nuw nsw i64 %l.sroa.0.1.lcssa, 1
  %_15.148 = icmp sgt i32 %4, 179
  br i1 %_15.148, label %bb9.1.1, label %bb13.1

bb9.1.1:                                          ; preds = %bb12.149
  %_24.1.1 = icmp eq i64 %l.sroa.0.1.lcssa, 0
  br i1 %_24.1.1, label %bb12.1.1, label %panic1

bb12.1.1:                                         ; preds = %bb9.1.1
  %_20.neg.1.1 = shl nuw i32 %4, 1
  %_18.1.1 = add i32 %_20.neg.1.1, -360
  %_0.sroa.0.0.i12.1.1 = tail call noundef i32 @llvm.smin.i32(i32 %_18.1.1, i32 %_0.sroa.0.0.i12.146)
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %5
  %_22.1.1 = load i32, ptr %6, align 4, !noundef !37
  %7 = sub i32 %4, %_22.1.1
  %_15.1.1 = icmp sgt i32 %7, 179
  br i1 %_15.1.1, label %panic1, label %bb13.1

bb13.1:                                           ; preds = %bb12.149, %bb12.1.1, %bb7.1
  %l.sroa.0.1.lcssa.1 = phi i64 [ %l.sroa.0.1.lcssa, %bb7.1 ], [ %5, %bb12.149 ], [ 2, %bb12.1.1 ]
  %ans.sroa.0.1.lcssa.1 = phi i32 [ %_0.sroa.0.0.i10, %bb7.1 ], [ %_0.sroa.0.0.i12.146, %bb12.149 ], [ %_0.sroa.0.0.i12.1.1, %bb12.1.1 ]
  %sum.sroa.0.1.lcssa.1 = phi i32 [ %2, %bb7.1 ], [ %4, %bb12.149 ], [ %7, %bb12.1.1 ]
  %_28.1 = sub i32 180, %sum.sroa.0.1.lcssa.1
  %_0.sroa.0.0.i.1 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_28.1, i1 false)
  %_26.1 = shl i32 %_0.sroa.0.0.i.1, 1
  %_0.sroa.0.0.i10.1 = tail call noundef i32 @llvm.smin.i32(i32 %_26.1, i32 %ans.sroa.0.1.lcssa.1)
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb13.1
  %_13.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %_13.2
  %_12.2 = load i32, ptr %8, align 4, !noundef !37
  %9 = add i32 %_12.2, %sum.sroa.0.1.lcssa.1
  %_1520.2 = icmp sgt i32 %9, 179
  br i1 %_1520.2, label %bb9.250, label %bb13.2

bb9.250:                                          ; preds = %bb7.2
  %_24.2 = icmp ult i64 %l.sroa.0.1.lcssa.1, 2
  br i1 %_24.2, label %bb12.255, label %panic1

bb12.255:                                         ; preds = %bb9.250
  %_20.neg.251 = shl nuw i32 %9, 1
  %_18.252 = add i32 %_20.neg.251, -360
  %_0.sroa.0.0.i12.253 = tail call noundef i32 @llvm.smin.i32(i32 %_18.252, i32 %_0.sroa.0.0.i10.1)
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %l.sroa.0.1.lcssa.1
  %_22.254 = load i32, ptr %10, align 4, !noundef !37
  %11 = sub i32 %9, %_22.254
  %_15.2 = icmp sgt i32 %11, 179
  br i1 %_15.2, label %bb9.1.2, label %bb13.2

bb9.1.2:                                          ; preds = %bb12.255
  %_24.1.2 = icmp eq i64 %l.sroa.0.1.lcssa.1, 0
  br i1 %_24.1.2, label %bb12.1.2, label %panic1

bb12.1.2:                                         ; preds = %bb9.1.2
  %_20.neg.1.2 = shl nuw i32 %11, 1
  %_18.1.2 = add i32 %_20.neg.1.2, -360
  %_0.sroa.0.0.i12.1.2 = tail call noundef i32 @llvm.smin.i32(i32 %_18.1.2, i32 %_0.sroa.0.0.i12.253)
  %12 = getelementptr inbounds nuw i32, ptr %arr, i64 %l.sroa.0.1.lcssa.1
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %_22.1.2 = load i32, ptr %13, align 4, !noundef !37
  %14 = sub i32 %11, %_22.1.2
  %_15.1.2 = icmp sgt i32 %14, 179
  br i1 %_15.1.2, label %panic1, label %bb13.2

bb13.2:                                           ; preds = %bb12.255, %bb12.1.2, %bb7.2
  %ans.sroa.0.1.lcssa.2 = phi i32 [ %_0.sroa.0.0.i10.1, %bb7.2 ], [ %_0.sroa.0.0.i12.253, %bb12.255 ], [ %_0.sroa.0.0.i12.1.2, %bb12.1.2 ]
  %sum.sroa.0.1.lcssa.2 = phi i32 [ %9, %bb7.2 ], [ %11, %bb12.255 ], [ %14, %bb12.1.2 ]
  %_28.2 = sub i32 180, %sum.sroa.0.1.lcssa.2
  %_0.sroa.0.0.i.2 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_28.2, i1 false)
  %_26.2 = shl i32 %_0.sroa.0.0.i.2, 1
  %_0.sroa.0.0.i10.2 = tail call noundef i32 @llvm.smin.i32(i32 %_26.2, i32 %ans.sroa.0.1.lcssa.2)
  br label %bb6

bb12:                                             ; preds = %bb7
  %_20.neg = shl nuw i32 %_12, 1
  %_18 = add i32 %_20.neg, -360
  %_0.sroa.0.0.i12 = tail call noundef i32 @llvm.smin.i32(i32 %_18, i32 360)
  %_22 = load i32, ptr %arr, align 8, !noundef !37
  %15 = sub i32 %_12, %_22
  %_15 = icmp sgt i32 %15, 179
  br i1 %_15, label %bb12.1, label %bb13

bb12.1:                                           ; preds = %bb12
  %_20.neg.1 = shl nuw i32 %15, 1
  %_18.1 = add i32 %_20.neg.1, -360
  %_0.sroa.0.0.i12.1 = tail call noundef i32 @llvm.smin.i32(i32 %_18.1, i32 %_0.sroa.0.0.i12)
  %16 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_22.1 = load i32, ptr %16, align 4, !noundef !37
  %17 = sub i32 %15, %_22.1
  %_15.1 = icmp sgt i32 %17, 179
  br i1 %_15.1, label %panic1, label %bb13

panic1:                                           ; preds = %bb12.1, %bb12.1.2, %bb12.1.1, %bb9.1.2, %bb9.250, %bb9.1.1, %bb9.143
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_053dcd8a6fd7a249eb4c2ce4acfda30d) #24
  unreachable
}
