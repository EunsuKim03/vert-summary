define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i28 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i28, label %bb8.preheader, label %bb6

bb8.preheader:                                    ; preds = %start, %bb11
  %spec.select31 = phi i32 [ %spec.select, %bb11 ], [ 1, %start ]
  %res.sroa.0.030 = phi i32 [ %_0.sroa.0.0.i, %bb11 ], [ -2147483648, %start ]
  %iter.sroa.0.029 = phi i32 [ %spec.select31, %bb11 ], [ 0, %start ]
  br label %bb10

bb6:                                              ; preds = %bb11, %start
  %res.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb11 ]
  ret i32 %res.sroa.0.0.lcssa

bb10:                                             ; preds = %bb8.preheader, %bb14
  %spec.select1627 = phi i32 [ %spec.select16, %bb14 ], [ 1, %bb8.preheader ]
  %curr_sum.sroa.0.026 = phi i32 [ %3, %bb14 ], [ 0, %bb8.preheader ]
  %iter1.sroa.0.025 = phi i32 [ %spec.select1627, %bb14 ], [ 0, %bb8.preheader ]
  %_18 = add nuw i32 %iter1.sroa.0.025, %iter.sroa.0.029
  %index = srem i32 %_18, %n
  %_25 = sext i32 %index to i64
  %_26 = icmp ult i32 %index, 2
  br i1 %_26, label %bb14, label %panic3

bb11:                                             ; preds = %bb14
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %3, i32 %res.sroa.0.030)
  %_0.i.i.i = icmp slt i32 %spec.select31, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select31, %1
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb6

bb14:                                             ; preds = %bb10
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_25
  %_24 = load i32, ptr %2, align 4, !noundef !37
  %_23 = mul i32 %_24, %iter1.sroa.0.025
  %3 = add i32 %_23, %curr_sum.sroa.0.026
  %_0.i.i.i11 = icmp slt i32 %spec.select1627, %n
  %4 = zext i1 %_0.i.i.i11 to i32
  %spec.select16 = add nuw nsw i32 %spec.select1627, %4
  br i1 %_0.i.i.i11, label %bb10, label %bb11

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_25, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fc22464ebf2dd82d3f5e4a5725850908) #24
  unreachable
}
