define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %n1 = sext i32 %n to i64
  %_19.peel = load i32, ptr %arr, align 8
  %exitcond.peel.not = icmp eq i32 %n, 1
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_19.peel29 = load i32, ptr %1, align 4
  %exitcond.peel32.not = icmp eq i32 %n, 2
  br label %bb2

bb2:                                              ; preds = %bb17, %start
  %iter.sroa.0.0 = phi i64 [ 0, %start ], [ %spec.select, %bb17 ]
  %_0.i.i.i = icmp ult i64 %iter.sroa.0.0, %n1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.0, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7.preheader, label %bb21

bb7.preheader:                                    ; preds = %bb2
  %_18 = icmp ult i64 %iter.sroa.0.0, 2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.0
  %_14.not.peel = icmp eq i64 %iter.sroa.0.0, 0
  br i1 %_14.not.peel, label %bb15.peel, label %bb9.peel

bb9.peel:                                         ; preds = %bb7.preheader
  br i1 %_18, label %bb11.peel, label %panic

bb11.peel:                                        ; preds = %bb9.peel
  %_17.peel = load i32, ptr %2, align 4, !noundef !37
  %_16.peel = icmp eq i32 %_17.peel, %_19.peel
  %brmerge = or i1 %_16.peel, %exitcond.peel.not
  %.mux = select i1 %_16.peel, i64 0, i64 %n1
  br i1 %brmerge, label %bb17, label %bb8.peel22

bb15.peel:                                        ; preds = %bb7.preheader
  br i1 %exitcond.peel.not, label %bb17, label %bb8.peel22

bb8.peel22:                                       ; preds = %bb11.peel, %bb15.peel
  %_14.not.peel23 = icmp eq i64 %iter.sroa.0.0, 1
  br i1 %_14.not.peel23, label %bb15.peel31, label %bb9.peel24

bb9.peel24:                                       ; preds = %bb8.peel22
  br i1 %_18, label %bb11.peel27, label %panic

bb11.peel27:                                      ; preds = %bb9.peel24
  %_17.peel28 = load i32, ptr %2, align 4, !noundef !37
  %_16.peel30 = icmp eq i32 %_17.peel28, %_19.peel29
  %brmerge59 = or i1 %_16.peel30, %exitcond.peel32.not
  %.mux60 = select i1 %_16.peel30, i64 1, i64 %n1
  br i1 %brmerge59, label %bb17, label %bb8.preheader

bb15.peel31:                                      ; preds = %bb8.peel22
  br i1 %exitcond.peel32.not, label %bb17, label %bb8.preheader

bb8.preheader:                                    ; preds = %bb11.peel27, %bb15.peel31
  br label %bb8

bb21:                                             ; preds = %bb2, %bb19
  %_0.sroa.0.0 = phi i32 [ %5, %bb19 ], [ -1, %bb2 ]
  ret i32 %_0.sroa.0.0

bb8:                                              ; preds = %bb8.preheader, %bb15
  %j.sroa.0.015 = phi i64 [ %3, %bb15 ], [ 2, %bb8.preheader ]
  %_14.not = icmp eq i64 %iter.sroa.0.0, %j.sroa.0.015
  br i1 %_14.not, label %bb15, label %bb9

bb17:                                             ; preds = %bb15, %bb11.peel27, %bb11.peel, %bb15.peel31, %bb15.peel
  %j.sroa.0.0.lcssa = phi i64 [ %.mux, %bb11.peel ], [ %n1, %bb15.peel ], [ %.mux60, %bb11.peel27 ], [ %n1, %bb15.peel31 ], [ %n1, %bb15 ]
  %_22 = icmp eq i64 %j.sroa.0.0.lcssa, %n1
  br i1 %_22, label %bb18, label %bb2

bb9:                                              ; preds = %bb8
  br i1 %_18, label %panic2, label %panic

bb15:                                             ; preds = %bb8
  %3 = add nuw i64 %j.sroa.0.015, 1
  %exitcond.not = icmp eq i64 %3, %n1
  br i1 %exitcond.not, label %bb17, label %bb8, !llvm.loop !1630

panic:                                            ; preds = %bb9.peel24, %bb9.peel, %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0cd3d5edfa312878e63429484b467214) #24
  unreachable

panic2:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %j.sroa.0.015, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0d0d51d69319123f2b4df7f45307ebf) #24
  unreachable

bb18:                                             ; preds = %bb17
  %_23 = icmp ult i64 %iter.sroa.0.0, 2
  br i1 %_23, label %bb19, label %panic3

bb19:                                             ; preds = %bb18
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.0
  %5 = load i32, ptr %4, align 4, !noundef !37
  br label %bb21

panic3:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f1e9688fb814f4ef0a68b1073fef45db) #24
  unreachable
}
