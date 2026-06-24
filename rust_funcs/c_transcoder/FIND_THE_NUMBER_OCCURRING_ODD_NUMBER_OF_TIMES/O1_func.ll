define noundef i32 @f_gold(i64 %0, i32 noundef %arr_size) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_5 = sext i32 %arr_size to i64
  %1 = add nsw i64 %_5, -3
  %.not = icmp ult i64 %1, -2
  br label %bb2

bb2:                                              ; preds = %bb11, %start
  %iter.sroa.0.0 = phi i64 [ 0, %start ], [ %spec.select17, %bb11 ]
  %_0.i.i.i = icmp ult i64 %iter.sroa.0.0, %_5
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select17 = add nuw i64 %iter.sroa.0.0, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb20

bb8.preheader:                                    ; preds = %bb2
  %_20 = icmp ult i64 %iter.sroa.0.0, 2
  br i1 %_20, label %bb8.preheader.split, label %panic2

bb8.preheader.split:                              ; preds = %bb8.preheader
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.0
  %_19 = load i32, ptr %2, align 4, !noundef !37
  br label %bb10

bb20:                                             ; preds = %bb2, %bb18
  %_0.sroa.0.0 = phi i32 [ %5, %bb18 ], [ -1, %bb2 ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb8.preheader.split, %bb13
  %spec.select1930 = phi i64 [ 1, %bb8.preheader.split ], [ %spec.select19, %bb13 ]
  %count.sroa.0.029 = phi i32 [ 0, %bb8.preheader.split ], [ %spec.select, %bb13 ]
  %iter1.sroa.0.028 = phi i64 [ 0, %bb8.preheader.split ], [ %spec.select1930, %bb13 ]
  br i1 %.not, label %panic3, label %bb13

bb11:                                             ; preds = %bb13
  %3 = and i32 %spec.select, 1
  %_23.not = icmp eq i32 %3, 0
  br i1 %_23.not, label %bb2, label %bb18

bb18:                                             ; preds = %bb11
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.0
  %5 = load i32, ptr %4, align 4, !noundef !37
  br label %bb20

panic2:                                           ; preds = %bb8.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6257a6f1348d598c377db2de57554403) #24
  unreachable

bb13:                                             ; preds = %bb10
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter1.sroa.0.028
  %_21 = load i32, ptr %6, align 4, !noundef !37
  %_18 = icmp eq i32 %_19, %_21
  %7 = zext i1 %_18 to i32
  %spec.select = add i32 %count.sroa.0.029, %7
  %_0.i.i.i12 = icmp ult i64 %spec.select1930, %_5
  %_0.i1.i.i15 = zext i1 %_0.i.i.i12 to i64
  %spec.select19 = add nuw i64 %spec.select1930, %_0.i1.i.i15
  br i1 %_0.i.i.i12, label %bb10, label %bb11

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb67a3abe77f3ba1662b05958491d936) #24
  unreachable
}
