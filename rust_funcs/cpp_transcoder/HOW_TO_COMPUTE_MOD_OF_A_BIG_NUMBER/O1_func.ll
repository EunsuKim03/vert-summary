define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %num, i32 noundef %a) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i9.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i9.not, label %bb7, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_4.i.i5 = load ptr, ptr %1, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %_21 = icmp eq i32 %a, 0
  %_22 = icmp eq i32 %a, -1
  br i1 %_21, label %panic1, label %bb9

cleanup:                                          ; preds = %panic2, %panic1
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h12497b795d73a8abE"(ptr noalias noundef align 8 dereferenceable(24) %num) #27
          to label %common.resume unwind label %terminate

bb7:                                              ; preds = %bb11, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %6, %bb11 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h12497b795d73a8abE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb7
  %3 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %3, %cleanup.i.i ], [ %2, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h12497b795d73a8abE.exit": ; preds = %bb7
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
  ret i32 %res.sroa.0.0.lcssa

bb9:                                              ; preds = %bb9.lr.ph, %bb11
  %spec.select13 = phi i64 [ %spec.select, %bb11 ], [ 1, %bb9.lr.ph ]
  %res.sroa.0.012 = phi i32 [ %6, %bb11 ], [ 0, %bb9.lr.ph ]
  %iter.sroa.0.011 = phi i64 [ %spec.select13, %bb11 ], [ 0, %bb9.lr.ph ]
  %_13 = mul i32 %res.sroa.0.012, 10
  %5 = getelementptr inbounds nuw i8, ptr %_4.i.i5, i64 %iter.sroa.0.011
  %_16 = load i8, ptr %5, align 1, !noundef !37
  %_15 = add i8 %_16, -48
  %_14 = zext i8 %_15 to i32
  %_12 = add i32 %_13, %_14
  %_23 = icmp eq i32 %_12, -2147483648
  %_24 = and i1 %_22, %_23
  br i1 %_24, label %panic2, label %bb11

unreachable:                                      ; preds = %panic2, %panic1
  unreachable

panic1:                                           ; preds = %bb9.lr.ph
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4516dc5e5d406b799b6cf624a2f4ca8f) #25
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb9
  %6 = srem i32 %_12, %a
  %_0.i.i.i = icmp ult i64 %spec.select13, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select13, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb9, label %bb7

panic2:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4516dc5e5d406b799b6cf624a2f4ca8f) #25
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %cleanup
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable
}
