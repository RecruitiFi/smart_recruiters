

require 'date'

module SmartRecruiters
  class EventName
    JOBCREATED = 'job.created'.freeze
    JOBUPDATED = 'job.updated'.freeze
    JOBSTATUSUPDATED = 'job.status.updated'.freeze
    JOBHIRING_TEAMUPDATED = 'job.hiring-team.updated'.freeze
    JOBADCREATED = 'job.ad.created'.freeze
    JOBADUPDATED = 'job.ad.updated'.freeze
    JOBADPOSTINGSUPDATED = 'job.ad.postings.updated'.freeze
    POSITIONCREATED = 'position.created'.freeze
    POSITIONUPDATED = 'position.updated'.freeze
    POSITIONDELETED = 'position.deleted'.freeze
    APPLICATIONCREATED = 'application.created'.freeze
    APPLICATIONSTATUSUPDATED = 'application.status.updated'.freeze
    APPLICATIONFIELDSUPDATED = 'application.fields.updated'.freeze
    APPLICATIONONBOARDING_STATUSUPDATED = 'application.onboarding-status.updated'.freeze
    APPLICATIONATTACHMENTCREATED = 'application.attachment.created'.freeze
    APPLICATIONSOURCEUPDATED = 'application.source.updated'.freeze
    CANDIDATECREATED = 'candidate.created'.freeze
    CANDIDATEUPDATED = 'candidate.updated'.freeze
    CANDIDATEDELETED = 'candidate.deleted'.freeze
    OFFERCREATED = 'offer.created'.freeze
    OFFERUPDATED = 'offer.updated'.freeze
    OFFERAPPROVALCREATED = 'offer.approval.created'.freeze
    OFFERAPPROVALAPPROVED = 'offer.approval.approved'.freeze
    OFFERAPPROVALREJECTED = 'offer.approval.rejected'.freeze
    OFFERAPPROVALABANDONED = 'offer.approval.abandoned'.freeze
    OFFERAPPROVALSTEPAPPROVED = 'offer.approval.step.approved'.freeze
    OFFERAPPROVALSTEPREJECTED = 'offer.approval.step.rejected'.freeze
    OFFERAPPROVERSKIPPED = 'offer.approver.skipped'.freeze
    OFFERAPPROVERDELEGATED = 'offer.approver.delegated'.freeze
    OFFERAPPROVALCOMMENTCREATED = 'offer.approval.comment.created'.freeze
    JOBAPPROVALCREATED = 'job.approval.created'.freeze
    JOBAPPROVALAPPROVED = 'job.approval.approved'.freeze
    JOBAPPROVALREJECTED = 'job.approval.rejected'.freeze
    JOBAPPROVALABANDONED = 'job.approval.abandoned'.freeze
    JOBAPPROVALSTEPAPPROVED = 'job.approval.step.approved'.freeze
    JOBAPPROVALSTEPREJECTED = 'job.approval.step.rejected'.freeze
    JOBAPPROVERSKIPPED = 'job.approver.skipped'.freeze
    JOBAPPROVERDELEGATED = 'job.approver.delegated'.freeze
    JOBAPPROVALCOMMENTCREATED = 'job.approval.comment.created'.freeze
    REVIEWCREATED = 'review.created'.freeze
    REVIEWUPDATED = 'review.updated'.freeze
    REVIEWDELETED = 'review.deleted'.freeze
    APPLICATIONSCREENING_ANSWERSCREATED = 'application.screening-answers.created'.freeze
    APPLICATIONSCREENING_ANSWERSUPDATED = 'application.screening-answers.updated'.freeze
    ONBOARDINGPROCESSSTARTED = 'onboarding.process.started'.freeze
    ONBOARDINGASSIGNMENTSHIGH_PRIORITYCOMPLETED = 'onboarding.assignments.high-priority.completed'.freeze
    ONBOARDINGASSIGNMENTSCOMPLETED = 'onboarding.assignments.completed'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EventName.constants.select { |c| EventName::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EventName" if constantValues.empty?
      value
    end
  end
end
