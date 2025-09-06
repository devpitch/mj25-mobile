import 'package:event_handler/cores/network/client/graphql/enums/link_status_enum.dart';
import 'package:event_handler/cores/network/client/graphql/enums/link_type_enum.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/widgets/app_chips.dart';
import 'package:event_handler/cores/widgets/app_expandable.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GuestFilterSheet extends StatefulHookConsumerWidget {
  const GuestFilterSheet({super.key});

  @override
  ConsumerState<GuestFilterSheet> createState() => _GuestFilterSheetState();
}

class _GuestFilterSheetState extends ConsumerState<GuestFilterSheet> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        //type
        AppExpandable(
          headerTitle: "Link Type",
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppChips(
                displayText: (s) => s.toString(),
                selected: state.selectedFilterType,
                data: LinkTypeEnum.values.map((e) => e.title).toList(),
                onSelected: (v) {
                  notifier.updateState({"selectedFilterType": v});
                  notifier.manageFilter(context, type: "Type");
                },
              ),
            ),
          ],
        ),
        15.verticalSpace,
        AppExpandable(
          headerTitle: "Link Status",
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppChips(
                displayText: (s) => s.toString(),
                selected: state.selectedFilterStatus,
                data: LinkStatusEnum.values.map((e) => e.title).toList(),
                onSelected: (v) {
                  notifier.updateState({"selectedFilterStatus": v});
                  notifier.manageFilter(context, type: "Status");
                },
              ),
            ),
          ],
        ),
        15.verticalSpace,
        //code
        AppExpandable(
          headerTitle: "Code",
          children: [
            CustomLabelTextField(
              hintText: "Enter invite code",
              labelText: "",
              textCtrl: state.filterCode,
              onChange: (value) {
                notifier.manageFilter(context, type: "Code");
              },
            ),
          ],
        ),
        15.verticalSpace,
        //guest per count
        AppExpandable(
          headerTitle: "Guest per entry",
          children: [
            CustomLabelTextField(
              hintText: "Enter count",
              labelText: "",
              textCtrl: state.filterGuestPerEntry,
              onChange: (value) {
                notifier.manageFilter(context, type: "GuestPerEntry");
              },
            ),
          ],
        ),
        15.verticalSpace,
        //guest size
        AppExpandable(
          headerTitle: "Guest size",
          children: [
            CustomLabelTextField(
              hintText: "Enter count",
              labelText: "",
              textCtrl: state.filterGuestsSize,
              onChange: (value) {
                notifier.manageFilter(context, type: "GuestSize");
              },
            ),
          ],
        ),
        15.verticalSpace,
        //guest registered
        AppExpandable(
          headerTitle: "Guest registered",
          children: [
            CustomLabelTextField(
              hintText: "Enter count",
              labelText: "",
              textCtrl: state.filterGuestRegistered,
              onChange: (value) {
                notifier.manageFilter(context, type: "GuestRegistered");
              },
            ),
          ],
        ),
        15.verticalSpace,
        //created since
        AppExpandable(
          headerTitle: "Created since",
          children: [
            CustomLabelTextField(
              hintText: "10/07/2025",
              labelText: "",
              isReadOnly: true,
              textCtrl: state.createdSinceCtrl,
              suffixIcon: GestureDetector(
                onTap: () {
                  notifier.manageFilter(context, type: "createdSince");
                },
                child: Icon(Icons.calendar_month_outlined),
              ),
              // onChange: (value) {
              //   notifier.manageFilter(type: "created");
              // },
            ),
          ],
        ),
        15.verticalSpace,
        //created until
        AppExpandable(
          headerTitle: "Created until",
          children: [
            CustomLabelTextField(
              hintText: "10/08/2025",
              labelText: "",
              isReadOnly: true,
              textCtrl: state.createdUtilCtrl,
              suffixIcon: GestureDetector(
                onTap: () {
                  notifier.manageFilter(context, type: "createdUtil");
                },
                child: Icon(Icons.calendar_month_outlined),
              ),
              // onChange: (value) {
              //   notifier.manageFilter(type: "created");
              // },
            ),
          ],
        ),
        15.verticalSpace,
        //updated since
        AppExpandable(
          headerTitle: "Updated since",
          children: [
            CustomLabelTextField(
              hintText: "10/07/2025",
              labelText: "",
              isReadOnly: true,
              textCtrl: state.updatedSinceCtrl,
              suffixIcon: GestureDetector(
                onTap: () {
                  notifier.manageFilter(context, type: "updatedSince");
                },
                child: Icon(Icons.calendar_month_outlined),
              ),
              // onChange: (value) {
              //   notifier.manageFilter(type: "created");
              // },
            ),
          ],
        ),
        15.verticalSpace,
        //updated until
        AppExpandable(
          headerTitle: "Updated until",
          children: [
            CustomLabelTextField(
              hintText: "10/08/2025",
              labelText: "",
              isReadOnly: true,
              textCtrl: state.updatedUtilCtrl,
              suffixIcon: GestureDetector(
                onTap: () {
                  notifier.manageFilter(context, type: "updatedUtil");
                },
                child: Icon(Icons.calendar_month_outlined),
              ),
              // onChange: (value) {
              //   notifier.manageFilter(type: "created");
              // },
            ),
          ],
        ),
        15.verticalSpace,
        if (state.guestFilters?["applied"] ?? false) ...[
          EventButton(
            width: double.infinity,
            text: "Clear",
            outline: true,
            onClick: () {
              notifier.clearFilter();
            },
          ),
          20.verticalSpace,
        ],
        EventButton(
          width: double.infinity,
          text: "Apply",

          isLoading: state.applyingFilter ?? false,
          onClick: () {
            notifier.applyFilter(context);
          },
        ),
      ],
    );
  }
}
