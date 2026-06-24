define noundef range(i32 0, 1114112) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %buf.i.i = alloca [24 x i8], align 8
  %_17 = alloca [24 x i8], align 8
  %_16 = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_2.i = load i64, ptr %0, align 8, !alias.scope !1669, !noundef !37
  %_3.i = icmp sgt i64 %_2.i, -1
  tail call void @llvm.assume(i1 %_3.i)
  %_0.i = icmp eq i64 %_2.i, 0
  br i1 %_0.i, label %bb20, label %bb3

cleanup:                                          ; preds = %bb2.i2.invoke, %bb4.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hce7d73d185dc119fE.exit
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i.i, %cleanup
  %eh.lpad-body = phi { ptr, i32 } [ %1, %cleanup ], [ %11, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9b58810b89a11504E"(ptr noalias noundef align 8 dereferenceable(24) %str) #28
          to label %common.resume unwind label %terminate

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %2, align 8, !alias.scope !1672, !nonnull !37, !noundef !37
  %x.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1677, !noundef !37
  %_6.i.i5 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i5, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb3
  %_18.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 1
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %_7.i10.i.i = icmp samesign ne i64 %_2.i, 1
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %y.i.i = load i8, ptr %_18.i.i.i, align 1, !noalias !1677, !noundef !37
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %3 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb6

bb3.i.i:                                          ; preds = %bb3
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb6

bb6.i.i:                                          ; preds = %bb4.i.i
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 2
  %_7.i17.i.i = icmp samesign ne i64 %_2.i, 2
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !1677, !noundef !37
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %4 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb6

bb8.i.i:                                          ; preds = %bb6.i.i
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 3
  %_7.i24.i.i = icmp samesign ne i64 %_2.i, 3
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !1677, !noundef !37
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %5 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb6

bb6:                                              ; preds = %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i
  %spec.select.i = phi i32 [ %_7.i.i, %bb3.i.i ], [ %5, %bb8.i.i ], [ %4, %bb6.i.i ], [ %3, %bb4.i.i ]
  %.not.i1 = icmp eq i32 %spec.select.i, 1114112
  br i1 %.not.i1, label %bb2.i2.invoke, label %bb7, !prof !1033

bb2.i2.invoke:                                    ; preds = %bb12, %bb6
  %6 = phi ptr [ @alloc_3be61251d397de380e1f942174d07e58, %bb6 ], [ @alloc_9fb45307076539891025761fcb51e142, %bb12 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #25
          to label %bb2.i2.cont unwind label %cleanup

bb2.i2.cont:                                      ; preds = %bb2.i2.invoke
  unreachable

bb7:                                              ; preds = %bb6
  %7 = add nsw i32 %spec.select.i, -65
  %or.cond.i = icmp ult i32 %7, 26
  br i1 %or.cond.i, label %bb9, label %bb1.i

bb1.i:                                            ; preds = %bb7
  %_4.i = icmp samesign ugt i32 %spec.select.i, 127
  br i1 %_4.i, label %bb4.i, label %bb14

bb4.i:                                            ; preds = %bb1.i
; invoke core::unicode::unicode_data::uppercase::lookup
  %8 = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data9uppercase6lookup17h357c9c1057b36eafE(i32 noundef range(i32 0, 1114112) %spec.select.i)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb4.i
  br i1 %8, label %bb9, label %bb14

bb14:                                             ; preds = %bb1.i, %bb8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_17)
  %_6.i.i7 = load ptr, ptr %2, align 8, !alias.scope !1682, !nonnull !37, !noundef !37
  %len.i.i8 = load i64, ptr %0, align 8, !alias.scope !1682, !noundef !37
  %_7.i11 = getelementptr inbounds nuw i8, ptr %_6.i.i7, i64 %len.i.i8
  store ptr %_6.i.i7, ptr %_17, align 8, !alias.scope !1687
  %9 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  store ptr %_7.i11, ptr %9, align 8, !alias.scope !1687
  %10 = getelementptr inbounds nuw i8, ptr %_17, i64 16
  store i64 1, ptr %10, align 8, !alias.scope !1687
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i.i), !noalias !1690
  store i64 0, ptr %buf.i.i, align 8, !noalias !1690
  %_5.sroa.4.0.buf.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %buf.i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_5.sroa.4.0.buf.sroa_idx.i.i, align 8, !noalias !1690
  %_5.sroa.5.0.buf.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %buf.i.i, i64 16
  store i64 0, ptr %_5.sroa.5.0.buf.sroa_idx.i.i, align 8, !noalias !1690
; invoke <alloc::string::String as core::iter::traits::collect::Extend<char>>::extend
  invoke void @"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17hada4efabc792d95bE"(ptr noalias noundef align 8 dereferenceable(24) %buf.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %_17)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17hce7d73d185dc119fE.exit unwind label %cleanup.i.i, !noalias !1697

bb9:                                              ; preds = %bb7, %bb8
  %_6.i.i9 = load ptr, ptr %2, align 8, !alias.scope !1698, !nonnull !37, !noundef !37
  %len.i.i10 = load i64, ptr %0, align 8, !alias.scope !1698, !noundef !37
  %_7.i15 = getelementptr inbounds nuw i8, ptr %_6.i.i9, i64 %len.i.i10
  %_7.i.i.i18 = icmp samesign ne i64 %len.i.i10, 0
  %_13.sroa.0.0.idx = zext i1 %_7.i.i.i18 to i64
  %_13.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i9, i64 %_13.sroa.0.0.idx
  br i1 %_7.i.i.i18, label %bb14.i.i24, label %bb12

cleanup.i.i:                                      ; preds = %bb14
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9b58810b89a11504E"(ptr noalias noundef align 8 dereferenceable(24) %buf.i.i) #28
          to label %cleanup.body unwind label %terminate.i.i, !noalias !1690

terminate.i.i:                                    ; preds = %cleanup.i.i
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24, !noalias !1690
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hce7d73d185dc119fE.exit: ; preds = %bb14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_16, ptr noundef nonnull align 8 dereferenceable(24) %buf.i.i, i64 24, i1 false), !noalias !1703
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i.i), !noalias !1690
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_17)
  %13 = invoke noundef i32 @f_gold(ptr noalias noundef align 8 captures(address) dereferenceable(24) %_16)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hce7d73d185dc119fE.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb21 unwind label %cleanup.i.i13

cleanup.i.i13:                                    ; preds = %bb19
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i14

terminate.i.i14:                                  ; preds = %cleanup.i.i13
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %cleanup.body, %cleanup.i.i62, %cleanup.i.i13
  %common.resume.op = phi { ptr, i32 } [ %14, %cleanup.i.i13 ], [ %20, %cleanup.i.i62 ], [ %eh.lpad-body, %cleanup.body ]
  resume { ptr, i32 } %common.resume.op

bb21:                                             ; preds = %bb19, %bb20
  %_0.sroa.0.0 = phi i32 [ %_0.sroa.0.1, %bb20 ], [ %13, %bb19 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0.sroa.0.0

bb14.i.i24:                                       ; preds = %bb9
  %x.i.i25 = load i8, ptr %_6.i.i9, align 1, !noalias !1704, !noundef !37
  %_6.i.i26 = icmp sgt i8 %x.i.i25, -1
  br i1 %_6.i.i26, label %bb3.i.i59, label %bb4.i.i27

bb4.i.i27:                                        ; preds = %bb14.i.i24
  %_30.i.i28 = and i8 %x.i.i25, 31
  %init.i.i29 = zext nneg i8 %_30.i.i28 to i32
  %16 = icmp ne i64 %len.i.i10, 1
  tail call void @llvm.assume(i1 %16)
  %y.i.i33 = load i8, ptr %_13.sroa.0.0, align 1, !noalias !1704, !noundef !37
  %_34.i.i34 = shl nuw nsw i32 %init.i.i29, 6
  %_36.i.i35 = and i8 %y.i.i33, 63
  %_35.i.i36 = zext nneg i8 %_36.i.i35 to i32
  %17 = or disjoint i32 %_34.i.i34, %_35.i.i36
  %_13.i.i37 = icmp ugt i8 %x.i.i25, -33
  br i1 %_13.i.i37, label %bb6.i.i39, label %bb12

bb3.i.i59:                                        ; preds = %bb14.i.i24
  %_7.i.i60 = zext nneg i8 %x.i.i25 to i32
  br label %bb12

bb6.i.i39:                                        ; preds = %bb4.i.i27
  %_18.i12.i.i32 = getelementptr inbounds nuw i8, ptr %_13.sroa.0.0, i64 1
  %_7.i17.i.i40 = icmp ne ptr %_18.i12.i.i32, %_7.i15
  tail call void @llvm.assume(i1 %_7.i17.i.i40)
  %z.i.i42 = load i8, ptr %_18.i12.i.i32, align 1, !noalias !1704, !noundef !37
  %_40.i.i43 = shl nuw nsw i32 %_35.i.i36, 6
  %_42.i.i44 = and i8 %z.i.i42, 63
  %_41.i.i45 = zext nneg i8 %_42.i.i44 to i32
  %y_z.i.i46 = or disjoint i32 %_40.i.i43, %_41.i.i45
  %_20.i.i47 = shl nuw nsw i32 %init.i.i29, 12
  %18 = or disjoint i32 %y_z.i.i46, %_20.i.i47
  %_21.i.i48 = icmp ugt i8 %x.i.i25, -17
  br i1 %_21.i.i48, label %bb8.i.i49, label %bb12

bb8.i.i49:                                        ; preds = %bb6.i.i39
  %_18.i19.i.i41 = getelementptr inbounds nuw i8, ptr %_13.sroa.0.0, i64 2
  %_7.i24.i.i50 = icmp ne ptr %_18.i19.i.i41, %_7.i15
  tail call void @llvm.assume(i1 %_7.i24.i.i50)
  %w.i.i52 = load i8, ptr %_18.i19.i.i41, align 1, !noalias !1704, !noundef !37
  %_26.i.i53 = shl nuw nsw i32 %init.i.i29, 18
  %_25.i.i54 = and i32 %_26.i.i53, 1835008
  %_46.i.i55 = shl nuw nsw i32 %y_z.i.i46, 6
  %_48.i.i56 = and i8 %w.i.i52, 63
  %_47.i.i57 = zext nneg i8 %_48.i.i56 to i32
  %_27.i.i58 = or disjoint i32 %_46.i.i55, %_47.i.i57
  %19 = or disjoint i32 %_27.i.i58, %_25.i.i54
  br label %bb12

bb12:                                             ; preds = %bb8.i.i49, %bb6.i.i39, %bb3.i.i59, %bb4.i.i27, %bb9
  %spec.select.i38 = phi i32 [ %_7.i.i60, %bb3.i.i59 ], [ 1114112, %bb9 ], [ %19, %bb8.i.i49 ], [ %18, %bb6.i.i39 ], [ %17, %bb4.i.i27 ]
  %.not.i = icmp eq i32 %spec.select.i38, 1114112
  br i1 %.not.i, label %bb2.i2.invoke, label %bb20, !prof !1033

bb20:                                             ; preds = %bb12, %start
  %_0.sroa.0.1 = phi i32 [ 0, %start ], [ %spec.select.i38, %bb12 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb21 unwind label %cleanup.i.i62

cleanup.i.i62:                                    ; preds = %bb20
  %20 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i63

terminate.i.i63:                                  ; preds = %cleanup.i.i62
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

terminate:                                        ; preds = %cleanup.body
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
}
