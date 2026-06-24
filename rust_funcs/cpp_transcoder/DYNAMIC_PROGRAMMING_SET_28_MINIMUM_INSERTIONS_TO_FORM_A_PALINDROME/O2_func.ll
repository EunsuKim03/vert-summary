define noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %str, i32 noundef %l, i32 noundef %h) unnamed_addr #1 {
start:
  %_420 = icmp sgt i32 %l, %h
  br i1 %_420, label %common.ret102, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_34 = load ptr, ptr %0, align 8, !nonnull !23
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_33 = load i64, ptr %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb2.lr.ph, %bb10
  %h.tr22 = phi i32 [ %h, %bb2.lr.ph ], [ %_7, %bb10 ]
  %l.tr21 = phi i32 [ %l, %bb2.lr.ph ], [ %_22, %bb10 ]
  %_5 = icmp eq i32 %l.tr21, %h.tr22
  br i1 %_5, label %common.ret102, label %bb4

bb4:                                              ; preds = %bb2
  %_7 = add i32 %h.tr22, -1
  %_6 = icmp eq i32 %l.tr21, %_7
  %_11 = sext i32 %l.tr21 to i64
  %_31 = icmp ugt i64 %_33, %_11
  br i1 %_6, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  br i1 %_31, label %bb19, label %panic

bb5:                                              ; preds = %bb4
  br i1 %_31, label %bb18, label %panic2

bb19:                                             ; preds = %bb6
  %_21 = sext i32 %h.tr22 to i64
  %_38 = icmp ugt i64 %_33, %_21
  br i1 %_38, label %bb21, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef %_33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e8b16e09484438bd1b823d55118aed8e) #18
  unreachable

bb21:                                             ; preds = %bb19
  %_17 = getelementptr inbounds nuw i32, ptr %_34, i64 %_11
  %_16 = load i32, ptr %_17, align 4, !range !1031, !noundef !23
  %_20 = getelementptr inbounds nuw i32, ptr %_34, i64 %_21
  %_19 = load i32, ptr %_20, align 4, !range !1031, !noundef !23
  %_15 = icmp eq i32 %_16, %_19
  br i1 %_15, label %bb10, label %bb12

panic1:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21, i64 noundef %_33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_75853844551f76c2b09e1327c677c970) #18
  unreachable

common.ret102:                                    ; preds = %bb20, %start, %bb10, %bb2, %bb12
  %common.ret102.op = phi i32 [ %2, %bb12 ], [ %., %bb20 ], [ 2147483647, %start ], [ 0, %bb2 ], [ 2147483647, %bb10 ]
  ret i32 %common.ret102.op

bb12:                                             ; preds = %bb21
  %_24 = tail call noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %str, i32 noundef %l.tr21, i32 noundef %_7)
  %_26 = add i32 %l.tr21, 1
  %_25 = tail call noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %str, i32 noundef %_26, i32 noundef %h.tr22)
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %_24, i32 %_25)
  %2 = add i32 %x.y.i, 1
  br label %common.ret102

bb10:                                             ; preds = %bb21
  %_22 = add i32 %l.tr21, 1
  %_4 = icmp sgt i32 %_22, %_7
  br i1 %_4, label %common.ret102, label %bb2

bb18:                                             ; preds = %bb5
  %_14 = sext i32 %h.tr22 to i64
  %_37 = icmp ugt i64 %_33, %_14
  br i1 %_37, label %bb20, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef %_33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c90ae470c4308e16ff141e4b409166ce) #18
  unreachable

bb20:                                             ; preds = %bb18
  %_10 = getelementptr inbounds nuw i32, ptr %_34, i64 %_11
  %_9 = load i32, ptr %_10, align 4, !range !1031, !noundef !23
  %_13 = getelementptr inbounds nuw i32, ptr %_34, i64 %_14
  %_12 = load i32, ptr %_13, align 4, !range !1031, !noundef !23
  %_8 = icmp ne i32 %_9, %_12
  %. = zext i1 %_8 to i32
  br label %common.ret102

panic3:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %_33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1fc359f214ee9a19fb274031e82cd788) #18
  unreachable
}
