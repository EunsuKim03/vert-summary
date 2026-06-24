define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %num.0, i64 noundef %num.1, i32 noundef %a) unnamed_addr #1 {
start:
  %_21 = getelementptr inbounds nuw i8, ptr %num.0, i64 %num.1
  %_7.i.i14 = icmp samesign eq i64 %num.1, 0
  br i1 %_7.i.i14, label %bb7, label %bb14.i.lr.ph

bb14.i.lr.ph:                                     ; preds = %start
  %_12 = icmp eq i32 %a, 0
  %_13 = icmp eq i32 %a, -1
  br label %bb14.i

bb14.i:                                           ; preds = %bb14.i.lr.ph, %bb5
  %res.sroa.0.016 = phi i32 [ 0, %bb14.i.lr.ph ], [ %5, %bb5 ]
  %iter.sroa.0.015 = phi ptr [ %num.0, %bb14.i.lr.ph ], [ %iter.sroa.0.1.ph, %bb5 ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.015, i64 1
  %x.i = load i8, ptr %iter.sroa.0.015, align 1, !noalias !1031, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_21
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.015, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1031, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %0 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb8

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb8

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_21
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.015, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1031, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %1 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb8

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_21
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.015, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1031, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %2 = or disjoint i32 %_27.i, %_25.i
  br label %bb8

bb8:                                              ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %0, %bb4.i ], [ %1, %bb6.i ], [ %2, %bb8.i ], [ %_7.i, %bb3.i ]
  %3 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %3)
  %4 = add nsw i32 %_0.sroa.4.0.i.ph, -48
  %_14.i = icmp ult i32 %4, 10
  br i1 %_14.i, label %bb10, label %bb9, !prof !1034

bb7:                                              ; preds = %bb5, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %5, %bb5 ]
  ret i32 %res.sroa.0.0.lcssa

bb10:                                             ; preds = %bb8
  %_8 = mul i32 %res.sroa.0.016, 10
  %_7 = add i32 %4, %_8
  br i1 %_12, label %panic, label %bb4

bb9:                                              ; preds = %bb8
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ec1fd3ff25d074440ececd26d2f6c261) #17
  unreachable

bb4:                                              ; preds = %bb10
  %_14 = icmp eq i32 %_7, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic1, label %bb5

panic:                                            ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bba6176ce97b5f648f11cf332320573d) #17
  unreachable

bb5:                                              ; preds = %bb4
  %5 = srem i32 %_7, %a
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_21
  br i1 %_7.i.i, label %bb7, label %bb14.i

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bba6176ce97b5f648f11cf332320573d) #17
  unreachable
}
